package indloc.indoor_location_2.activity;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import indloc.indoor_location_2.sqlite.DB_helper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Location_Activity
  extends Activity
{
  private static String APTB_NAME = "chosen_ap";
  private static int CAPTIME;
  private static String D_TABLE;
  private static String DbName = "Inloc2_db";
  private static String FPTB_NAME = "fingerPrint";
  private static int K_VALUE = 1;
  private static String LOCATB_NAME;
  private static String M;
  private static String T_TABLE;
  private static String VIEW;
  private SQLiteDatabase Db;
  private double X_;
  private double Y_;
  private List<ScanResult> listResult;
  private TextView t2;
  private TextView t3;
  private TextView t4;
  private TextView t5;
  private TextView t6;
  private TextView t7;
  private TextView t8;
  private TextView t9;
  
  static
  {
    CAPTIME = 30;
    T_TABLE = "tempt";
    M = "Location_Activity";
    VIEW = "locat_view";
    D_TABLE = "distanceOfAP";
    LOCATB_NAME = "all_location";
  }
  
  private void LocateByDis()
  {
    Cursor localCursor = get_cursor(D_TABLE, null, "d asc");
    localCursor.moveToFirst();
    int k = 0;
    int i = 0;
    int j = 0;
    for (;;)
    {
      if (j >= K_VALUE)
      {
        localCursor.close();
        Log.i(M, "sumx = " + k);
        Log.i(M, "sumy = " + i);
        double d1 = k / K_VALUE;
        double d2 = i / K_VALUE;
        Log.i(M, "x_ = " + d1);
        Log.i(M, "y_ = " + d2);
        Toast.makeText(this, "(" + d1 + "," + d2 + ")", 1).show();
        this.X_ = d1;
        this.Y_ = d2;
        return;
      }
      k = (int)(k + Double.parseDouble(localCursor.getString(1)));
      i = (int)(i + Double.parseDouble(localCursor.getString(2)));
      localCursor.moveToNext();
      j += 1;
    }
  }
  
  private void ShowLocation()
  {
    switch ((int)this.X_)
    {
    default: 
      Toast.makeText(this, "Not in the positioning region!", 1).show();
    case 201: 
    case 202: 
    case 203: 
    case 204: 
    case 205: 
    case 206: 
    case 207: 
    case 208: 
    case 209: 
    case 210: 
    case 211: 
    case 218: 
    case 219: 
    case 220: 
    case 221: 
    case 222: 
      return;
    case 212: 
      this.t6.setVisibility(0);
      return;
    case 214: 
      this.t2.setVisibility(0);
      return;
    case 215: 
      this.t3.setVisibility(0);
      return;
    case 216: 
      this.t4.setVisibility(0);
      return;
    case 217: 
      this.t5.setVisibility(0);
      return;
    case 1: 
      this.t9.setVisibility(0);
      return;
    case 2: 
      this.t7.setVisibility(0);
      return;
    }
    this.t8.setVisibility(0);
  }
  
  private void calDistance()
  {
    double d2 = -100.0D;
    double d1 = -100.0D;
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = get_cursor(LOCATB_NAME, null, null);
    localCursor.moveToFirst();
    if (localCursor.isAfterLast())
    {
      localCursor.close();
      return;
    }
    String str1 = localCursor.getString(1);
    String str2 = localCursor.getString(2);
    localArrayList.clear();
    Object localObject1 = get_cursor(APTB_NAME, null, "id_ asc");
    ((Cursor)localObject1).moveToFirst();
    double d3;
    label126:
    long l;
    if (((Cursor)localObject1).isAfterLast())
    {
      ((Cursor)localObject1).close();
      d3 = 0.0D;
      localObject1 = localArrayList.iterator();
      if (((Iterator)localObject1).hasNext()) {
        break label553;
      }
      localObject1 = new ContentValues();
      ((ContentValues)localObject1).put("X_", str1);
      ((ContentValues)localObject1).put("Y_", str2);
      ((ContentValues)localObject1).put("d", Double.valueOf(Math.sqrt(d3)));
      Log.i(M, "d = " + Math.sqrt(d3));
      l = this.Db.insert(D_TABLE, null, (ContentValues)localObject1);
      if (l != -1L) {
        break label599;
      }
      Log.i(M, "Inserting data failed!");
    }
    for (;;)
    {
      localCursor.moveToNext();
      break;
      Object localObject2 = ((Cursor)localObject1).getString(1);
      Object localObject3 = "X_ =" + str1 + " and Y_ =" + str2 + " and mac ='" + (String)localObject2 + "'";
      localObject3 = get_cursor(FPTB_NAME, (String)localObject3, null);
      ((Cursor)localObject3).moveToFirst();
      label325:
      if (((Cursor)localObject3).isAfterLast())
      {
        ((Cursor)localObject3).close();
        localObject3 = "mac ='" + (String)localObject2 + "'";
        Log.i(M, "mac =" + (String)localObject2);
        localObject2 = get_cursor(VIEW, (String)localObject3, null);
        ((Cursor)localObject2).moveToFirst();
      }
      for (;;)
      {
        if (((Cursor)localObject2).isAfterLast())
        {
          ((Cursor)localObject2).close();
          localArrayList.add(Double.valueOf(Math.pow(d2 - d1, 2.0D)));
          ((Cursor)localObject1).moveToNext();
          break;
          d2 = Double.parseDouble(((Cursor)localObject3).getString(4));
          Log.i(M, "fprss = " + d2);
          ((Cursor)localObject3).moveToNext();
          break label325;
        }
        d1 = Double.parseDouble(((Cursor)localObject2).getString(1));
        Log.i(M, "nrss = " + d1);
        ((Cursor)localObject2).moveToNext();
      }
      label553:
      d3 += ((Double)((Iterator)localObject1).next()).doubleValue();
      Log.i(M, "sum = " + d3);
      break label126;
      label599:
      Log.i(M, "Inserting data succeeded!" + l);
    }
  }
  
  private void collectCycle()
  {
    int i = CAPTIME;
    for (;;)
    {
      if (i <= 0) {
        return;
      }
      up_date();
      i -= 1;
    }
  }
  
  private void collect_data()
  {
    dbbuild();
    collectCycle();
  }
  
  private void dbbuild()
  {
    this.Db = new DB_helper(this, DbName, null, 1).getWritableDatabase();
    this.Db.execSQL("drop table if exists " + T_TABLE);
    this.Db.execSQL("create table if not exists " + T_TABLE + "( id_ integer primary key autoincrement,mac varchar,rss integer)");
    this.Db.execSQL("create view if not exists " + VIEW + " as select mac,avg(rss) from " + T_TABLE + " group by mac");
    this.Db.execSQL("drop table if exists " + D_TABLE);
    this.Db.execSQL("create table if not exists " + D_TABLE + "( id_ integer primary key autoincrement,X_ integer, Y_ integer,d double)");
  }
  
  private void getLocation()
  {
    calDistance();
    LocateByDis();
    ShowLocation();
  }
  
  private Cursor get_cursor(String paramString1, String paramString2, String paramString3)
  {
    return this.Db.query(paramString1, null, paramString2, null, null, null, paramString3);
  }
  
  private void insertdata(String paramString, int paramInt)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("mac", paramString);
    localContentValues.put("rss", Integer.valueOf(paramInt));
    long l = this.Db.insert(T_TABLE, null, localContentValues);
    if (l == -1L)
    {
      Log.i(M, "Inserting data failed!");
      return;
    }
    Log.i(M, "Inserting data succeeded!" + l);
  }
  
  private void locating()
  {
    collect_data();
    getLocation();
  }
  
  private void up_date()
  {
    WifiManager localWifiManager = (WifiManager)getSystemService("wifi");
    localWifiManager.setWifiEnabled(true);
    localWifiManager.startScan();
    this.listResult = null;
    this.listResult = localWifiManager.getScanResults();
    upload();
  }
  
  private void upload()
  {
    if (this.listResult != null)
    {
      Iterator localIterator = this.listResult.iterator();
      for (;;)
      {
        if (!localIterator.hasNext()) {
          return;
        }
        ScanResult localScanResult = (ScanResult)localIterator.next();
        insertdata(localScanResult.BSSID, localScanResult.level);
      }
    }
    Toast.makeText(this, "wifi list is null!", 1).show();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903043);
    this.t2 = ((TextView)findViewById(2131230740));
    this.t3 = ((TextView)findViewById(2131230741));
    this.t4 = ((TextView)findViewById(2131230742));
    this.t5 = ((TextView)findViewById(2131230743));
    this.t6 = ((TextView)findViewById(2131230744));
    this.t7 = ((TextView)findViewById(2131230746));
    this.t8 = ((TextView)findViewById(2131230745));
    this.t9 = ((TextView)findViewById(2131230747));
    ((Button)findViewById(2131230721)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Location_Activity.this.locating();
      }
    });
    ((Button)findViewById(2131230724)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(Location_Activity.this, Indloc_Activity.class);
        paramAnonymousView.setFlags(67108864);
        Location_Activity.this.startActivity(paramAnonymousView);
      }
    });
  }
}


/* Location:              /Users/changliu/Downloads/big data project/indloc/indoor_location_2/activity/Location_Activity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */