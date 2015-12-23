package indloc.indoor_location_2.arithmetic;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;

public class FingerPrint
{
  private static String APTB_NAME;
  private static String FPTB_NAME;
  private static String LOCATB_NAME;
  private static String M = "FingerPrint";
  private static String TB_NAME = "dataOfInloc2";
  private static String VIEW_NAME;
  private Cursor cursor1;
  private Cursor cursor2;
  private Cursor cursor3;
  
  static
  {
    APTB_NAME = "chosen_ap";
    LOCATB_NAME = "all_location";
    FPTB_NAME = "fingerPrint";
    VIEW_NAME = "ap_view";
  }
  
  public void start(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("drop table if exists " + FPTB_NAME);
    paramSQLiteDatabase.execSQL("create table if not exists " + FPTB_NAME + "( id_ integer primary key autoincrement, X_ integer, Y_ integer, mac varchar,rss integer)");
    paramSQLiteDatabase.execSQL("drop view if exists " + VIEW_NAME);
    paramSQLiteDatabase.execSQL("create view if not exists " + VIEW_NAME + " as select X_,Y_,mac,avg(rss) from " + TB_NAME + " group by X_,Y_,mac");
    this.cursor1 = paramSQLiteDatabase.query(LOCATB_NAME, null, null, null, null, null, null);
    this.cursor1.moveToFirst();
    if (this.cursor1.isAfterLast())
    {
      this.cursor1.close();
      return;
    }
    String str1 = this.cursor1.getString(1);
    String str2 = this.cursor1.getString(2);
    this.cursor2 = paramSQLiteDatabase.query(APTB_NAME, null, null, null, null, null, "id_ asc");
    this.cursor2.moveToFirst();
    String str3;
    for (;;)
    {
      if (this.cursor2.isAfterLast())
      {
        this.cursor2.close();
        this.cursor1.moveToNext();
        break;
      }
      str3 = this.cursor2.getString(1);
      str4 = "X_ =" + str1 + " and Y_ =" + str2 + " and mac ='" + str3 + "'";
      this.cursor3 = paramSQLiteDatabase.query(VIEW_NAME, null, str4, null, null, null, null);
      this.cursor3.moveToFirst();
      if (!this.cursor3.isAfterLast()) {
        break label362;
      }
      this.cursor3.close();
      this.cursor2.moveToNext();
    }
    label362:
    String str4 = this.cursor3.getString(3);
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("X_", str1);
    localContentValues.put("Y_", str2);
    localContentValues.put("mac", str3);
    localContentValues.put("rss", str4);
    long l = paramSQLiteDatabase.insert(FPTB_NAME, null, localContentValues);
    if (l == -1L) {
      Log.i(M, "Inserting data failed!");
    }
    for (;;)
    {
      this.cursor3.moveToNext();
      break;
      Log.i(M, "Inserting data succeeded!" + l);
    }
  }
}


/* Location:              /Users/changliu/Downloads/big data project/indloc/indoor_location_2/arithmetic/FingerPrint.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */