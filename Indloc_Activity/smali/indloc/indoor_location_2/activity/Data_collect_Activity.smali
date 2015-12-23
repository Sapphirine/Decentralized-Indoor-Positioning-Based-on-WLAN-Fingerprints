.class public Lindloc/indoor_location_2/activity/Data_collect_Activity;
.super Landroid/app/Activity;
.source "Data_collect_Activity.java"


# static fields
.field private static DbName:Ljava/lang/String; = null

.field private static M:Ljava/lang/String; = null

.field private static final TB_NAME:Ljava/lang/String; = "dataOfInloc2"


# instance fields
.field private Captime:I

.field private Db:Landroid/database/sqlite/SQLiteDatabase;

.field private X_:I

.field private Y_:I

.field private et_x:Landroid/widget/EditText;

.field private et_y:Landroid/widget/EditText;

.field private groupet:Landroid/widget/EditText;

.field private listResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "Inloc2_db"

    sput-object v0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->DbName:Ljava/lang/String;

    .line 31
    const-string v0, "Data_collect_Activity"

    sput-object v0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->M:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lindloc/indoor_location_2/activity/Data_collect_Activity;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Data_collect_Activity;->beginCollecting()V

    return-void
.end method

.method private beginCollecting()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Data_collect_Activity;->getpara()V

    .line 65
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Data_collect_Activity;->dbbuild()V

    .line 66
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Data_collect_Activity;->collectCycle()V

    .line 67
    return-void
.end method

.method private collectCycle()V
    .locals 3

    .prologue
    .line 91
    iget v0, p0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->Captime:I

    .local v0, "i":I
    :goto_0
    if-gtz v0, :cond_0

    .line 94
    const-string v1, "\u6211\u662f\u5206\u5272\u7ebf"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lindloc/indoor_location_2/activity/Data_collect_Activity;->insertdata(Ljava/lang/String;I)V

    .line 95
    iget-object v1, p0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 97
    iget-object v1, p0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->et_x:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, p0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->et_y:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void

    .line 92
    :cond_0
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Data_collect_Activity;->up_date()V

    .line 91
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private dbbuild()V
    .locals 4

    .prologue
    .line 82
    new-instance v0, Lindloc/indoor_location_2/sqlite/DB_helper;

    sget-object v1, Lindloc/indoor_location_2/activity/Data_collect_Activity;->DbName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lindloc/indoor_location_2/sqlite/DB_helper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 83
    .local v0, "dbHelper":Lindloc/indoor_location_2/sqlite/DB_helper;
    invoke-virtual {v0}, Lindloc/indoor_location_2/sqlite/DB_helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    .line 84
    iget-object v1, p0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "create table if not exists dataOfInloc2( id_ integer primary key autoincrement, X_ integer, Y_ integer, mac varchar,rss integer)"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private getpara()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->et_x:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->X_:I

    .line 73
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->et_y:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->Y_:I

    .line 76
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->groupet:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->Captime:I

    .line 77
    return-void
.end method

.method private insertdata(Ljava/lang/String;I)V
    .locals 6
    .param p1, "m"    # Ljava/lang/String;
    .param p2, "r"    # I

    .prologue
    .line 128
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 129
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "X_"

    iget v4, p0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->X_:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    const-string v3, "Y_"

    iget v4, p0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->Y_:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v3, "mac"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v3, "rss"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    iget-object v3, p0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "dataOfInloc2"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 134
    .local v0, "check1":J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 135
    sget-object v3, Lindloc/indoor_location_2/activity/Data_collect_Activity;->M:Ljava/lang/String;

    const-string v4, "\u6570\u636e\u63d2\u5165\u5931\u8d25\uff01"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    sget-object v3, Lindloc/indoor_location_2/activity/Data_collect_Activity;->M:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6570\u636e\u63d2\u5165\u6210\u529f\uff01"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private up_date()V
    .locals 2

    .prologue
    .line 104
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lindloc/indoor_location_2/activity/Data_collect_Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 105
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 106
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->listResult:Ljava/util/List;

    .line 108
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->listResult:Ljava/util/List;

    .line 110
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Data_collect_Activity;->upload()V

    .line 111
    return-void
.end method

.method private upload()V
    .locals 4

    .prologue
    .line 115
    iget-object v1, p0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->listResult:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->listResult:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    const-string v1, "0"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lindloc/indoor_location_2/activity/Data_collect_Activity;->insertdata(Ljava/lang/String;I)V

    .line 123
    :goto_1
    return-void

    .line 116
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 117
    .local v0, "myScanResult":Landroid/net/wifi/ScanResult;
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-direct {p0, v2, v3}, Lindloc/indoor_location_2/activity/Data_collect_Activity;->insertdata(Ljava/lang/String;I)V

    goto :goto_0

    .line 121
    .end local v0    # "myScanResult":Landroid/net/wifi/ScanResult;
    :cond_1
    const-string v1, "wifi\u63a5\u6536\u5217\u8868\u4e3a\u7a7a"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lindloc/indoor_location_2/activity/Data_collect_Activity;->setContentView(I)V

    .line 39
    const v2, 0x7f08000b

    invoke-virtual {p0, v2}, Lindloc/indoor_location_2/activity/Data_collect_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->et_x:Landroid/widget/EditText;

    .line 40
    const v2, 0x7f08000d

    invoke-virtual {p0, v2}, Lindloc/indoor_location_2/activity/Data_collect_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->et_y:Landroid/widget/EditText;

    .line 41
    const v2, 0x7f08000f

    invoke-virtual {p0, v2}, Lindloc/indoor_location_2/activity/Data_collect_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lindloc/indoor_location_2/activity/Data_collect_Activity;->groupet:Landroid/widget/EditText;

    .line 44
    const v2, 0x7f080010

    invoke-virtual {p0, v2}, Lindloc/indoor_location_2/activity/Data_collect_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 45
    .local v1, "begincol":Landroid/widget/Button;
    new-instance v2, Lindloc/indoor_location_2/activity/Data_collect_Activity$1;

    invoke-direct {v2, p0}, Lindloc/indoor_location_2/activity/Data_collect_Activity$1;-><init>(Lindloc/indoor_location_2/activity/Data_collect_Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v2, 0x7f080011

    invoke-virtual {p0, v2}, Lindloc/indoor_location_2/activity/Data_collect_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 53
    .local v0, "back":Landroid/widget/Button;
    new-instance v2, Lindloc/indoor_location_2/activity/Data_collect_Activity$2;

    invoke-direct {v2, p0}, Lindloc/indoor_location_2/activity/Data_collect_Activity$2;-><init>(Lindloc/indoor_location_2/activity/Data_collect_Activity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method
