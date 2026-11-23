package android.graphics;
public class Rect {
 public int left,top,right,bottom;
 public Rect(){}
 public Rect(Rect o){set(o.left,o.top,o.right,o.bottom);}
 public void set(int l,int t,int r,int b){left=l;top=t;right=r;bottom=b;}
 public int width(){return right-left;} public int height(){return bottom-top;}
 public void inset(int x,int y){left+=x;right-=x;top+=y;bottom-=y;}
 public float exactCenterX(){return (left+right)/2f;} public float exactCenterY(){return (top+bottom)/2f;}
 public boolean intersect(int l,int t,int r,int b){
  l=Math.max(l,left); t=Math.max(t,top); r=Math.min(r,right); b=Math.min(b,bottom);
  if(l>=r||t>=b)return false; set(l,t,r,b);return true;
 }
}
