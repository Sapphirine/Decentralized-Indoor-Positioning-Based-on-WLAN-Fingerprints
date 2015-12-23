.class Lcom/example/niuzong/PointCol$1;
.super Ljava/lang/Object;
.source "PointCol.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/niuzong/PointCol;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/niuzong/PointCol;


# direct methods
.method constructor <init>(Lcom/example/niuzong/PointCol;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/niuzong/PointCol$1;->this$0:Lcom/example/niuzong/PointCol;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/example/niuzong/PointCol$1;->this$0:Lcom/example/niuzong/PointCol;

    # invokes: Lcom/example/niuzong/PointCol;->beginCollecting()V
    invoke-static {v0}, Lcom/example/niuzong/PointCol;->access$0(Lcom/example/niuzong/PointCol;)V

    .line 45
    return-void
.end method
