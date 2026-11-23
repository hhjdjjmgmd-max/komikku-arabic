package android.text;
public class StaticLayout extends Layout {
 private final int width,height,lines; private final String text;
 private StaticLayout(String text,TextPaint p,int w){this.text=text;width=w;lines=text.split("\\n",-1).length;height=(int)Math.ceil(lines*p.getTextSize()*1.3);}
 public int getWidth(){return width;} public int getHeight(){return height;} public int getLineCount(){return lines;}
 public void draw(android.graphics.Canvas canvas){canvas.drawCaption(text,width,height);}
 public static class Builder {
  private String text; private int width; private TextPaint paint;
  public static Builder obtain(CharSequence value,int start,int end,TextPaint paint,int width){
   Builder b=new Builder();b.text=value.subSequence(start,end).toString();b.paint=paint;b.width=width;return b;
  }
  public Builder setAlignment(Alignment a){return this;}
  public Builder setTextDirection(TextDirectionHeuristic h){return this;}
  public Builder setBreakStrategy(int n){return this;}
  public Builder setHyphenationFrequency(int n){return this;}
  public Builder setIncludePad(boolean b){return this;}
  public StaticLayout build(){return new StaticLayout(text,paint,width);}
 }
}
