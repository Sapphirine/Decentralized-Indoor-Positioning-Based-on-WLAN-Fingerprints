.class Lindloc/indoor_location_2/activity/Indloc_Activity$1;
.super Ljava/lang/Object;
.source "Indloc_Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lindloc/indoor_location_2/activity/Indloc_Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lindloc/indoor_location_2/activity/Indloc_Activity;


# direct methods
.method constructor <init>(Lindloc/indoor_location_2/activity/Indloc_Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lindloc/indoor_location_2/activity/Indloc_Activity$1;->this$0:Lindloc/indoor_location_2/activity/Indloc_Activity;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lindloc/indoor_location_2/activity/Indloc_Activity$1;->this$0:Lindloc/indoor_location_2/activity/Indloc_Activity;

    const-class v2, Lindloc/indoor_location_2/activity/Data_collect_Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lindloc/indoor_location_2/activity/Indloc_Activity$1;->this$0:Lindloc/indoor_location_2/activity/Indloc_Activity;

    invoke-virtual {v1, v0}, Lindloc/indoor_location_2/activity/Indloc_Activity;->startActivity(Landroid/content/Intent;)V

    .line 26
    return-void
.end method
