.class Lcom/example/niuzong/PointCol$2;
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
    iput-object p1, p0, Lcom/example/niuzong/PointCol$2;->this$0:Lcom/example/niuzong/PointCol;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/niuzong/PointCol$2;->this$0:Lcom/example/niuzong/PointCol;

    const-class v2, Lcom/example/niuzong/NiuMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/example/niuzong/PointCol$2;->this$0:Lcom/example/niuzong/PointCol;

    invoke-virtual {v1, v0}, Lcom/example/niuzong/PointCol;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method
