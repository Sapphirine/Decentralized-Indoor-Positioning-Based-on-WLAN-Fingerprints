package android.support.v4.content;

import android.content.Context;
import java.io.File;

class ContextCompatFroyo
{
  public static File getExternalCacheDir(Context paramContext)
  {
    return paramContext.getExternalCacheDir();
  }
  
  public static File getExternalFilesDir(Context paramContext, String paramString)
  {
    return paramContext.getExternalFilesDir(paramString);
  }
}


/* Location:              /Users/changliu/Downloads/big data project/android/support/v4/content/ContextCompatFroyo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */