package indloc.indoor_location_2.activity;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.Toast;
import indloc.indoor_location_2.arithmetic.FingerPrint;
import indloc.indoor_location_2.sqlite.DB_helper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class Data_process_Activity
  extends Activity
{
  private static String APTB_NAME;
  private static String DbName = "Inloc2_db";
  private static String LOCATB_NAME;
  private static String M = "Data_process_Activity";
  private static final String TB_NAME = "dataOfInloc2";
  private static String VIEW_NAME;
  private SQLiteDatabase Db;
  private Cursor cursor;
  private ArrayList<Map<String, Object>> data;
  private ListView listview;
  
  static
  {
    APTB_NAME = "chosen_ap";
    LOCATB_NAME = "all_location";
    VIEW_NAME = "ap_view";
  }
  
  private void begin_process()
  {
    db_build();
    table_prepare();
    choose_ap();
    showAP();
    new FingerPrint().start(this.Db);
    Toast.makeText(this, "Fingerprint recorded successfully!", 1).show();
    this.Db.close();
  }
  
  private void choose_ap()
  {
    Object localObject1 = new ArrayList();
    Object localObject2 = new ArrayList();
    Object localObject3 = get_cursor(LOCATB_NAME, null, null);
    ((Cursor)localObject3).moveToFirst();
    if (((Cursor)localObject3).isAfterLast())
    {
      ((Cursor)localObject3).close();
      if (((ArrayList)localObject1).size() <= 2)
      {
        Toast.makeText(this, "Choosing AP failed!", 1).show();
        finish();
      }
      localObject1 = ((ArrayList)localObject1).iterator();
    }
    for (;;)
    {
      if (!((Iterator)localObject1).hasNext())
      {
        return;
        Object localObject4 = ((Cursor)localObject3).getString(1);
        Object localObject5 = ((Cursor)localObject3).getString(2);
        localObject4 = "X_ =" + (String)localObject4 + " and Y_ =" + (String)localObject5;
        localObject4 = get_cursor(VIEW_NAME, (String)localObject4, null);
        ((Cursor)localObject4).moveToFirst();
        ((ArrayList)localObject2).clear();
        if (((ArrayList)localObject1).size() == 0) {
          label171:
          if (!((Cursor)localObject4).isAfterLast()) {}
        }
        for (;;)
        {
          ((Cursor)localObject4).close();
          ((Cursor)localObject3).moveToNext();
          break;
          ((ArrayList)localObject1).add(((Cursor)localObject4).getString(2));
          ((Cursor)localObject4).moveToNext();
          break label171;
          do
          {
            if (((ArrayList)localObject1).contains(((Cursor)localObject4).getString(2))) {
              ((ArrayList)localObject2).add(((Cursor)localObject4).getString(2));
            }
            ((Cursor)localObject4).moveToNext();
          } while (!((Cursor)localObject4).isAfterLast());
          ((ArrayList)localObject1).clear();
          localObject5 = ((ArrayList)localObject2).iterator();
          while (((Iterator)localObject5).hasNext()) {
            ((ArrayList)localObject1).add((String)((Iterator)localObject5).next());
          }
        }
      }
      localObject2 = (String)((Iterator)localObject1).next();
      if ((!((String)localObject2).equals("0")) && (!((String)localObject2).equals("This is a dividing line")))
      {
        localObject3 = new ContentValues();
        ((ContentValues)localObject3).put("apmac", (String)localObject2);
        Log.i("ap", (String)localObject2);
        long l = this.Db.insert(APTB_NAME, null, (ContentValues)localObject3);
        if (l == -1L) {
          Log.i(M, "Inserting data failed!");
        } else {
          Log.i(M, "Inserting data succeeded!" + l);
        }
      }
    }
  }
  
  private void db_build()
  {
    this.Db = new DB_helper(this, DbName, null, 1).getWritableDatabase();
  }
  
  private Cursor get_cursor(String paramString1, String paramString2, String paramString3)
  {
    return this.Db.query(paramString1, null, paramString2, null, null, null, paramString3);
  }
  
  private void getdata()
  {
    this.data = new ArrayList();
    this.cursor = get_cursor(APTB_NAME, null, "id_ ASC");
    this.cursor.moveToFirst();
    for (;;)
    {
      if (this.cursor.isAfterLast())
      {
        this.cursor.close();
        return;
      }
      String str1 = this.cursor.getString(0);
      String str2 = this.cursor.getString(1);
      HashMap localHashMap = new HashMap();
      localHashMap.put("id", str1);
      localHashMap.put("apmac", str2);
      this.data.add(localHashMap);
      this.cursor.moveToNext();
    }
  }
  
  private void showAP()
  {
    getdata();
    SimpleAdapter localSimpleAdapter = new SimpleAdapter(this, this.data, 2130903041, new String[] { "id", "apmac" }, new int[] { 2131230726, 2131230727 });
    this.listview.setAdapter(localSimpleAdapter);
  }
  
  private void table_prepare()
  {
    this.Db.execSQL("drop table if exists " + LOCATB_NAME);
    this.Db.execSQL("create table if not exists " + LOCATB_NAME + "( " + "id_ integer primary key autoincrement,X_ integer,Y_ integer)");
    this.Db.execSQL("insert into " + LOCATB_NAME + "(X_,Y_) select distinct X_,Y_ from " + "dataOfInloc2");
    this.Db.execSQL("create view if not exists " + VIEW_NAME + " as select X_,Y_,mac from " + "dataOfInloc2" + " group by X_,Y_,mac");
    this.Db.execSQL("drop table if exists " + APTB_NAME);
    this.Db.execSQL("create table if not exists " + APTB_NAME + "( id_ integer primary key autoincrement,apmac varchar)");
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903046);
    this.listview = ((ListView)findViewById(2131230764));
    ((Button)findViewById(2131230721)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Data_process_Activity.this.begin_process();
      }
    });
    ((Button)findViewById(2131230722)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(Data_process_Activity.this, Indloc_Activity.class);
        paramAnonymousView.setFlags(67108864);
        Data_process_Activity.this.startActivity(paramAnonymousView);
      }
    });
  }
}


/* Location:              /Users/changliu/Downloads/big data project/indloc/indoor_location_2/activity/Data_process_Activity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */