.class Lcom/example/niuzong/MD$Table;
.super Ljava/lang/Object;
.source "MD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/niuzong/MD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Table"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/niuzong/MD;


# direct methods
.method constructor <init>(Lcom/example/niuzong/MD;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/example/niuzong/MD$Table;->this$0:Lcom/example/niuzong/MD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/example/niuzong/MD$Table;)V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/example/niuzong/MD$Table;->build()V

    return-void
.end method

.method static synthetic access$1(Lcom/example/niuzong/MD$Table;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/example/niuzong/MD$Table;->query(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/example/niuzong/MD$Table;)V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/example/niuzong/MD$Table;->delete()V

    return-void
.end method

.method private build()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/example/niuzong/MD$Table;->this$0:Lcom/example/niuzong/MD;

    # getter for: Lcom/example/niuzong/MD;->niuDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/example/niuzong/MD;->access$0(Lcom/example/niuzong/MD;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "create table if not exists dataOfNiu( id_ integer primary key autoincrement, X_ integer, Y_ integer, mac varchar,rss integer)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method private delete()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/example/niuzong/MD$Table;->this$0:Lcom/example/niuzong/MD;

    # getter for: Lcom/example/niuzong/MD;->niuDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/example/niuzong/MD;->access$0(Lcom/example/niuzong/MD;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "drop table if exists dataOfNiu"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private query(Ljava/lang/String;)V
    .locals 9
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 243
    iget-object v8, p0, Lcom/example/niuzong/MD$Table;->this$0:Lcom/example/niuzong/MD;

    iget-object v0, p0, Lcom/example/niuzong/MD$Table;->this$0:Lcom/example/niuzong/MD;

    # getter for: Lcom/example/niuzong/MD;->niuDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/example/niuzong/MD;->access$0(Lcom/example/niuzong/MD;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "dataOfNiu"

    const-string v7, "id_ ASC"

    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/example/niuzong/MD;->access$1(Lcom/example/niuzong/MD;Landroid/database/Cursor;)V

    .line 244
    return-void
.end method
