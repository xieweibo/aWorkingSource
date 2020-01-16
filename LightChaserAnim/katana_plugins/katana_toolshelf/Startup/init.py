from Katana import Callbacks
import logging
import os
from Katana import FarmAPI
import production.functiming as functiming


log = logging.getLogger("LCA Startup")
    
def onStartupComplete(objectHash):   
    try:
        def exec_cmd(cmd):
            cmd_str = str(cmd)
            exec cmd_str in locals()
            return

        def add_katana_menu(parent_menu,label,cmd,icon=''):
            action=QtGui.QAction(label,parent_menu)
            if icon:
                action.setIcon(QtGui.QIcon(icon))
            mapper.setMapping(action,cmd)
            action.triggered.connect(mapper.map)
            parent_menu.addAction(action)          

        global log
        from lxml import etree as ET
        log.info("Start creating LCA Tools menu.")

        import Katana
        from Katana import QtGui, QtCore
        layoutsMenus = [x for x in QtGui.qApp.topLevelWidgets() if type(x).__name__ == 'LayoutsMenu'] 

        if len(layoutsMenus) != 1: 
            return

        mainMenu = layoutsMenus[0].parent()
        mapper = QtCore.QSignalMapper(mainMenu)

        root_menu = QtGui.QMenu('LCA Tools', mainMenu)
        mainMenu.addMenu(root_menu)

        lc_tool_set_env = os.environ.get('LCTOOLSET','/mnt/utility/toolset')
        script_dir = os.path.join(lc_tool_set_env,'applications/katana/Startup')

        tree=ET.parse(script_dir + "/menu_root.xml")
        root = tree.getroot()   
        for sub_node in root:
            if sub_node.tag=='sub_menu':
                dept = sub_node.attrib['name']
                if not os.path.isfile(script_dir+"/menu_"+dept+".xml"):
                    continue

                dept_menu = root_menu.addMenu('LCA '+dept.upper())
                sub_root = ET.parse(script_dir+"/menu_"+dept+".xml").getroot()
                l_cmds = sub_root.getiterator("cmd_menu")
                for cmd_node in l_cmds:
                    add_katana_menu(dept_menu, 
                                    cmd_node.attrib.get('label'),
                                    cmd_node.attrib.get('command'),
                                    icon=cmd_node.attrib.get('icon'))

            elif sub_node.tag=='separator':
                root_menu.addSeparator()

            elif sub_node.tag=='cmd_menu':
                add_katana_menu(root_menu, 
                                sub_node.attrib.get('label'),
                                sub_node.attrib.get('command'),
                                icon=sub_node.attrib.get('icon'))

        root_menu.addSeparator()
        mapper.mapped['QString'].connect(exec_cmd)
    except:
        print traceback.format_exc()

    ##################################################################################################
    # Add Light Chaser Animation Katana Shelf ToolBox
    try:
        import sys
        LACENV = os.environ.get('LCTOOLSET', '/mnt/utility/toolset')
        STARTUP_PATH = os.path.join(LACENV, 'applications/katana/Startup')
        sys.path.insert(0, '%s' % STARTUP_PATH)
        import shelf,menu
        theShelf = shelf.shelfGui()
        layoutsMenus = [x for x in QtGui.qApp.topLevelWidgets() if type(x).__name__ == 'LayoutsMenu']
        KatanaWindow = layoutsMenus[0].parent().parent()
        KatanaWindowLayout = KatanaWindow.layout()

        menuLayout = KatanaWindowLayout.itemAt(0)

        shelfIndex = 18
        menuLayout.insertWidget(shelfIndex, theShelf.get())
    except:
        print traceback.format_exc()
    ##################################################################################################

    #sys.path.append("/home/zhixiang/dev/lcatools/applications/katana_v2/Scripts/mayaCfxSocket")
    if 'maya' in sys.argv:
        import mayaCfxSocket.katanaSocket
        print 'port:15000'
        # from PyUtilModule.Manifest import WorkQueue
        # import OfficeSocketServer
        # WorkQueue.WorkQueue()
        # _logger = logging.getLogger('PyUtil.SocketServer.Remote' )
        # socketServer = OfficeSocketServer.SocketServer('localhost', _logger.info, WorkQueue.WorkQueue())
        # socketServer.start()


class Timer(functiming.ShotgunTimerEnv):
    import production.functiming as functiming
    def after_call(self):
        from Katana import FarmAPI
        import production.functiming as functiming
        self.func_file = FarmAPI.GetKatanaFileName()
        functiming.ShotgunTimerEnv.after_call(self)


@Timer
def __after_open_callback(objectHash=None,filename=None):
    from Katana import FarmAPI
    import production.functiming as functiming
    log.info("after_open_callback...")
    del os.environ[functiming.TIMESTAMP_ENV]

def __before_open_callback(objectHash=None,filename=None):
    import time
    import production.functiming as functiming
    from Katana import FarmAPI

    log.info("before_open_callback...")
    os.environ[functiming.TIMESTAMP_ENV] = str(time.time())
    log.info(os.environ.get(functiming.TIMESTAMP_ENV))

def __before_save_callback(objectHash=None,filename=None):
    import time
    import production.functiming as functiming
    log.info("before_save_callback...")
    os.environ[functiming.TIMESTAMP_ENV] = str(time.time())

    class Timer(functiming.ShotgunTimerEnv):
        import production.functiming as functiming
        def after_call(self):
            from Katana import FarmAPI
            import production.functiming as functiming
            self.func_file = FarmAPI.GetKatanaFileName()
            functiming.ShotgunTimerEnv.after_call(self)
    @Timer
    def __after_save_callback():
        log.info("after_save_callback...")
        del os.environ[functiming.TIMESTAMP_ENV]

    __after_save_callback()


log.info("Registering onStartupComplete callback...")
Callbacks.addCallback(Callbacks.Type.onStartupComplete, onStartupComplete)
Callbacks.addCallback(Callbacks.Type.onSceneAboutToLoad,__before_open_callback)
Callbacks.addCallback(Callbacks.Type.onSceneLoad,__after_open_callback)
Callbacks.addCallback(Callbacks.Type.onSceneSave,__before_save_callback)
