package
{
	import flash.display.Shape;
	
	import spark.components.IconItemRenderer;
	
	
	/**
	 * 
	 * ASDoc comments for this item renderer class
	 * 
	 */
	public class ListItemRenderer extends IconItemRenderer
	{
		public function ListItemRenderer()
		{
			//TODO: implement function
			super();
			
			super.labelField = "name";
			super.messageField = "msg";
			
			this.setStyle("paddingLeft", 25);
			this.setStyle("paddingRight", 25);
			this.setStyle("paddingTop", 15);
			this.setStyle("paddingBottom", 15);
		}
		
		/**
		 * @private
		 *
		 * Override this setter to respond to data changes
		 */
		override public function set data(value:Object):void
		{
			super.data = value;
			// the data has changed.  push these changes down in to the 
			// subcomponents here    		
		} 
		
		/**
		 * @private
		 * 
		 * Override this method to create children for your item renderer 
		 */	
		override protected function createChildren():void
		{
			super.createChildren();
			// create any additional children for your item renderer here
		}
		
		/**
		 * @private
		 * 
		 * Override this method to change how the item renderer 
		 * sizes itself. For performance reasons, do not call 
		 * super.measure() unless you need to.
		 */ 
		override protected function measure():void
		{
			super.measure();
			// measure all the subcomponents here and set measuredWidth, measuredHeight, 
			// measuredMinWidth, and measuredMinHeight   
		}
		
		/**
		 * @private
		 * 
		 * Override this method to change how the background is drawn for 
		 * item renderer.  For performance reasons, do not call 
		 * super.drawBackground() if you do not need to.
		 */
		override protected function drawBackground(unscaledWidth:Number, 
												   unscaledHeight:Number):void
		{
			// do any drawing for the background of the item renderer here
			if(data.status == "s")
			{
				graphics.beginFill(0xd2f5c3);
			}
			else
			{
				graphics.beginFill(0xf5c3c3);
			}
			graphics.drawRoundRect(15, 5, unscaledWidth - 30, unscaledHeight - 10, 15, 15);
			graphics.endFill();
			
			if(data.status == "s")
			{
				graphics.beginFill(0xd2f5c3);
				
				graphics.moveTo(20, 5);
				graphics.lineTo(20, 20);
				graphics.lineTo(0, 20);
				graphics.lineTo(20, 5);
			}
			else
			{
				graphics.beginFill(0xf5c3c3);
				
				graphics.moveTo(unscaledWidth - 25, 5);
				graphics.lineTo(unscaledWidth - 5, 20);
				graphics.lineTo(unscaledWidth - 25, 20);
				graphics.lineTo(unscaledWidth - 25, 5);
			}
		}
		
		/**
		 * @private
		 *  
		 * Override this method to change how the background is drawn for this 
		 * item renderer. For performance reasons, do not call 
		 * super.layoutContents() if you do not need to.
		 */
		override protected function layoutContents(unscaledWidth:Number, 
												   unscaledHeight:Number):void
		{
			super.layoutContents(unscaledWidth, unscaledHeight);
		}
		
		private function drawTriangle(col:uint, xPos:int, yPos:int):void
		{
			var triangleShape:Shape = new Shape();
			
			triangleShape.graphics.beginFill(col);
			triangleShape.graphics.moveTo(10, 5);
			triangleShape.graphics.lineTo(20, 20);
			triangleShape.graphics.lineTo(0, 20);
			triangleShape.graphics.lineTo(10, 5);
			addChild(triangleShape);
			triangleShape.x = xPos;
			triangleShape.y = yPos;
		}
		
	}
}