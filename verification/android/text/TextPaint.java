package android.text;
public class TextPaint extends android.graphics.Paint {
 private float size;
 public TextPaint(int flags){super(flags);}
 public void setTextSize(float n){size=n;} public float getTextSize(){return size;}
 public android.graphics.Typeface setTypeface(android.graphics.Typeface f){return f;}
 public float measureText(String text){return text.length()*size*.58f;}
}
