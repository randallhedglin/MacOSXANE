package com.wb.software
{
	import flash.external.ExtensionContext;
	
	internal final class MacOSXANE
	{
		// extension context
		private static var m_extContext :ExtensionContext = null;
		
		// class constructor
		public function MacOSXANE()
		{
			// create context
			if(!m_extContext)
				m_extContext = ExtensionContext.createExtensionContext(
								   "com.wb.software.MacOSXANE",
								   "general");
			
			// check for error
			if(!m_extContext)
				trace("com.wb.software.MacOSXANE.MacOSXANE(): " +
					  "Failed to create extension context");
		}
		
		// addFullScreenButton() -- add button & persist full-screen
		public function addFullScreenButton() :void		
		{
			// pass it on
			if(m_extContext)
				m_extContext.call("addFullScreenButton");
		}
		
		// detectVisibilityChanges() -- add listeners for visibility-change events
		public function detectVisibilityChanges() :void
		{
			// pass it on
			if(m_extContext)
				m_extContext.call("detectVisibilityChanges");
		}
		
		// getExtensionContext() -- get reference to context
		public function getExtensionContext() :ExtensionContext
		{
			// return the object
			return(m_extContext);
		}
		
		// getLongestDisplaySide() -- retrieve longest resolution for device
		public function getLongestDisplaySide() :int
		{
			// check for context
			if(!m_extContext)
				return(0);
			
			// get return value
			var ret :int = m_extContext.call("getLongestDisplaySide") as int;
			
			// return it
			return(ret);
		}
		
8		// isFullScreen() -- retrieve full-screen flag
		public function isFullScreen() :Boolean
		{
			// check for context
			if(!m_extContext)
				return(0);
			
			// get return value
			var ret :Boolean = (m_extContext.call("isFullScreen") as int) ? true : false; 
			
			// return it
			return(ret);
		}
		
		// isRectOnVisibleScreen() -- determine if given rect intersects with a visible screen
		public function isRectOnVisibleScreen(windowX :int,
											  windowY :int,
										 	  windowW :int,
										 	  windowH :int) :Boolean
		{
			// check for context
			if(!m_extContext)
				return(0);
			
			// get return value
			var ret :int = m_extContext.call("isRectOnVisibleScreen",
											 windowX,
											 windowY,
											 windowW,
											 windowH) as int;
			
			// return it
			return(ret ? true : false);
		}
		
		// isZoomedOrZooming() -- determine if main window is zoomed or zooming
		public function isZoomedOrZooming() :Boolean
		{
			// check for context
			if(!m_extContext)
				return(0);
			
			// get return value
			var ret :int = m_extContext.call("isZoomedOrZooming") as int;
			
			// return it
			return(ret ? true : false);
		}
		
		// messageBox() -- display simple message box
		public function messageBox(title :String, message :String):void		
		{
			// pass it on
			if(m_extContext)
				m_extContext.call("messageBox", title, message);
		}
		
		// testANE() -- verify functionality
		public function testANE(val :int) :int
		{
			// check for context
			if(!m_extContext)
				return(0);
			
			// get return value
			var ret :int = m_extContext.call("testANE", val) as int;
			
			// return it
			return(ret);
		}
		
		// toggleFullScreen() -- toggle full-screen mode
		public function toggleFullScreen() :void		
		{
			// pass it on
			if(m_extContext)
				m_extContext.call("toggleFullScreen");
		}
	}
}
