.class Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;
.super Ljava/lang/Object;
.source "Data_manage_Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lindloc/indoor_location_2/activity/Data_manage_Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Table"
.end annotation


# instance fields
.field final synthetic this$0:Lindloc/indoor_location_2/activity/Data_manage_Activity;


# direct methods
.method constructor <init>(Lindloc/indoor_location_2/activity/Data_manage_Activity;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;->this$0:Lindloc/indoor_location_2/activity/Data_manage_Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;->build()V

    return-void
.end method

.method static synthetic access$1(Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;->query(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;->delete()V

    return-void
.end method

.method private build()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;->this$0:Lindloc/indoor_location_2/activity/Data_manage_Activity;

    # getter for: Lindloc/indoor_location_2/activity/Data_manage_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->access$0(Lindloc/indoor_location_2/activity/Data_manage_Activity;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "create table if not exists dataOfInloc2( id_ integer primary key autoincrement, X_ integer, Y_ integer, mac varchar,rss integer)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method private delete()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;->this$0:Lindloc/indoor_location_2/activity/Data_manage_Activity;

    # getter for: Lindloc/indoor_location_2/activity/Data_manage_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->access$0(Lindloc/indoor_location_2/activity/Data_manage_Activity;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "drop table if exists dataOfInloc2"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method private query(Ljava/lang/String;)V
    .locals 9
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 246
    iget-object v8, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;->this$0:Lindloc/indoor_location_2/activity/Data_manage_Activity;

    iget-object v0, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;->this$0:Lindloc/indoor_location_2/activity/Data_manage_Activity;

    # getter for: Lindloc/indoor_location_2/activity/Data_manage_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->access$0(Lindloc/indoor_location_2/activity/Data_manage_Activity;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "dataOfInloc2"

    const-string v7, "id_ ASC"

    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v8, v0}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->access$1(Lindloc/indoor_location_2/activity/Data_manage_Activity;Landroid/database/Cursor;)V

    .line 247
    return-void
.end method
