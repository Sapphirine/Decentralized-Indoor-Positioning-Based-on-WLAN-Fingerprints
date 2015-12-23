.class Lcom/example/niuzong/NiuMainActivity$4;
.super Ljava/lang/Object;
.source "NiuMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/niuzong/NiuMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/niuzong/NiuMainActivity;


# direct methods
.method constructor <init>(Lcom/example/niuzong/NiuMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/niuzong/NiuMainActivity$4;->this$0:Lcom/example/niuzong/NiuMainActivity;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/example/niuzong/NiuMainActivity$4;->this$0:Lcom/example/niuzong/NiuMainActivity;

    invoke-virtual {v0}, Lcom/example/niuzong/NiuMainActivity;->finish()V

    .line 53
    return-void
.end method
