package indloc.indoor_location_2.sqlite;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

public class DB_helper
  extends SQLiteOpenHelper
{
  public DB_helper(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt)
  {
    super(paramContext, paramString, paramCursorFactory, paramInt);
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase) {}
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
}


/* Location:              /Users/changliu/Downloads/big data project/indloc/indoor_location_2/sqlite/DB_helper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */