package indloc.indoor_location_2.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class Indloc_Activity
  extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903040);
    ((Button)findViewById(2131230721)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(Indloc_Activity.this, Data_collect_Activity.class);
        Indloc_Activity.this.startActivity(paramAnonymousView);
      }
    });
    ((Button)findViewById(2131230722)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(Indloc_Activity.this, Data_manage_Activity.class);
        Indloc_Activity.this.startActivity(paramAnonymousView);
      }
    });
    ((Button)findViewById(2131230724)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(Indloc_Activity.this, Data_process_Activity.class);
        Indloc_Activity.this.startActivity(paramAnonymousView);
      }
    });
    ((Button)findViewById(2131230723)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(Indloc_Activity.this, Location_Activity.class);
        Indloc_Activity.this.startActivity(paramAnonymousView);
      }
    });
    ((Button)findViewById(2131230725)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Indloc_Activity.this.finish();
      }
    });
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131165184, paramMenu);
    return true;
  }
}


/* Location:              /Users/changliu/Downloads/big data project/indloc/indoor_location_2/activity/Indloc_Activity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */