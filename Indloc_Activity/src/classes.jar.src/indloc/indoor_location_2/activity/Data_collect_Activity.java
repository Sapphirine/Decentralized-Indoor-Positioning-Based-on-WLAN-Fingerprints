package indloc.indoor_location_2.activity;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.text.Editable;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import indloc.indoor_location_2.sqlite.DB_helper;
import java.util.Iterator;
import java.util.List;

public class Data_collect_Activity
  extends Activity
{
  private static String DbName = "Inloc2_db";
  private static String M = "Data_collect_Activity";
  private static final String TB_NAME = "dataOfInloc2";
  private int Captime;
  private SQLiteDatabase Db;
  private int X_;
  private int Y_;
  private EditText et_x;
  private EditText et_y;
  private EditText groupet;
  private List<ScanResult> listResult;
  
  private void beginCollecting()
  {
    getpara();
    dbbuild();
    collectCycle();
  }
  
  private void collectCycle()
  {
    int i = this.Captime;
    for (;;)
    {
      if (i <= 0)
      {
        insertdata("This is a dividing line", 0);
        this.Db.close();
        this.et_x.setText("");
        this.et_y.setText("");
        return;
      }
      up_date();
      i -= 1;
    }
  }
  
  private void dbbuild()
  {
    this.Db = new DB_helper(this, DbName, null, 1).getWritableDatabase();
    this.Db.execSQL("create table if not exists dataOfInloc2( id_ integer primary key autoincrement, X_ integer, Y_ integer, mac varchar,rss integer)");
  }
  
  private void getpara()
  {
    this.X_ = Integer.parseInt(this.et_x.getText().toString().trim());
    this.Y_ = Integer.parseInt(this.et_y.getText().toString().trim());
    this.Captime = Integer.parseInt(this.groupet.getText().toString().trim());
  }
  
  private void insertdata(String paramString, int paramInt)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("X_", Integer.valueOf(this.X_));
    localContentValues.put("Y_", Integer.valueOf(this.Y_));
    localContentValues.put("mac", paramString);
    localContentValues.put("rss", Integer.valueOf(paramInt));
    long l = this.Db.insert("dataOfInloc2", null, localContentValues);
    if (l == -1L)
    {
      Log.i(M, "Inserting data failed!");
      return;
    }
    Log.i(M, "Inserting data succeeded!" + l);
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
        if (!localIterator.hasNext())
        {
          insertdata("0", 0);
          return;
        }
        ScanResult localScanResult = (ScanResult)localIterator.next();
        insertdata(localScanResult.BSSID, localScanResult.level);
      }
    }
    Toast.makeText(this, "wifi list is null", 1).show();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903042);
    this.et_x = ((EditText)findViewById(2131230731));
    this.et_y = ((EditText)findViewById(2131230733));
    this.groupet = ((EditText)findViewById(2131230735));
    ((Button)findViewById(2131230736)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Data_collect_Activity.this.beginCollecting();
      }
    });
    ((Button)findViewById(2131230737)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(Data_collect_Activity.this, Indloc_Activity.class);
        paramAnonymousView.setFlags(67108864);
        Data_collect_Activity.this.startActivity(paramAnonymousView);
      }
    });
  }
}


/* Location:              /Users/changliu/Downloads/big data project/indloc/indoor_location_2/activity/Data_collect_Activity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */