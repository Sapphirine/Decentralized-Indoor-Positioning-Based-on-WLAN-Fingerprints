.class public Lindloc/indoor_location_2/arithmetic/FingerPrint;
.super Ljava/lang/Object;
.source "FingerPrint.java"


# static fields
.field private static APTB_NAME:Ljava/lang/String;

.field private static FPTB_NAME:Ljava/lang/String;

.field private static LOCATB_NAME:Ljava/lang/String;

.field private static M:Ljava/lang/String;

.field private static TB_NAME:Ljava/lang/String;

.field private static VIEW_NAME:Ljava/lang/String;


# instance fields
.field private cursor1:Landroid/database/Cursor;

.field private cursor2:Landroid/database/Cursor;

.field private cursor3:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "dataOfInloc2"

    sput-object v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->TB_NAME:Ljava/lang/String;

    .line 12
    const-string v0, "chosen_ap"

    sput-object v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->APTB_NAME:Ljava/lang/String;

    .line 13
    const-string v0, "all_location"

    sput-object v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->LOCATB_NAME:Ljava/lang/String;

    .line 14
    const-string v0, "fingerPrint"

    sput-object v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->FPTB_NAME:Ljava/lang/String;

    .line 15
    const-string v0, "ap_view"

    sput-object v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->VIEW_NAME:Ljava/lang/String;

    .line 16
    const-string v0, "FingerPrint"

    sput-object v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->M:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 16
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drop table if exists "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lindloc/indoor_location_2/arithmetic/FingerPrint;->FPTB_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create table if not exists "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lindloc/indoor_location_2/arithmetic/FingerPrint;->FPTB_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 25
    const-string v2, "( id_ integer primary key autoincrement, X_ integer, Y_ integer, mac varchar,rss integer)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drop view if exists "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lindloc/indoor_location_2/arithmetic/FingerPrint;->VIEW_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create view if not exists "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lindloc/indoor_location_2/arithmetic/FingerPrint;->VIEW_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 28
    const-string v2, " as select X_,Y_,mac,avg(rss) from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lindloc/indoor_location_2/arithmetic/FingerPrint;->TB_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " group by X_,Y_,mac"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 31
    sget-object v2, Lindloc/indoor_location_2/arithmetic/FingerPrint;->LOCATB_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->cursor1:Landroid/database/Cursor;

    .line 32
    move-object/from16 v0, p0

    iget-object v1, v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->cursor1:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 33
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->cursor1:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    move-object/from16 v0, p0

    iget-object v1, v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->cursor1:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 66
    return-void

    .line 34
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->cursor1:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 35
    .local v14, "x":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->cursor1:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 36
    .local v15, "y":Ljava/lang/String;
    sget-object v2, Lindloc/indoor_location_2/arithmetic/FingerPrint;->APTB_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "id_ asc"

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->cursor2:Landroid/database/Cursor;

    .line 37
    move-object/from16 v0, p0

    iget-object v1, v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->cursor2:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 38
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->cursor2:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    move-object/from16 v0, p0

    iget-object v1, v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->cursor2:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 61
    move-object/from16 v0, p0

    iget-object v1, v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->cursor1:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 39
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->cursor2:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 40
    .local v9, "ap":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "X_ ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and Y_ ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and mac =\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, "condition":Ljava/lang/String;
    sget-object v2, Lindloc/indoor_location_2/arithmetic/FingerPrint;->VIEW_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->cursor3:Landroid/database/Cursor;

    .line 42
    move-object/from16 v0, p0

    iget-object v1, v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->cursor3:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 43
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->cursor3:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    move-object/from16 v0, p0

    iget-object v1, v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->cursor3:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 58
    move-object/from16 v0, p0

    iget-object v1, v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->cursor2:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 44
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->cursor3:Landroid/database/Cursor;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 45
    .local v12, "rss":Ljava/lang/String;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 46
    .local v13, "values":Landroid/content/ContentValues;
    const-string v1, "X_"

    invoke-virtual {v13, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "Y_"

    invoke-virtual {v13, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "mac"

    invoke-virtual {v13, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "rss"

    invoke-virtual {v13, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v1, Lindloc/indoor_location_2/arithmetic/FingerPrint;->FPTB_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    .line 51
    .local v10, "check":J
    const-wide/16 v1, -0x1

    cmp-long v1, v10, v1

    if-nez v1, :cond_3

    .line 52
    sget-object v1, Lindloc/indoor_location_2/arithmetic/FingerPrint;->M:Ljava/lang/String;

    const-string v2, "\u6570\u636e\u63d2\u5165\u5931\u8d25\uff01"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;->cursor3:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 54
    :cond_3
    sget-object v1, Lindloc/indoor_location_2/arithmetic/FingerPrint;->M:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6570\u636e\u63d2\u5165\u6210\u529f\u54e6\uff01"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
