.class Lcom/firebase/ui/auth/KickoffActivity$1;
.super Ljava/lang/Object;
.source "KickoffActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/KickoffActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/KickoffActivity;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/KickoffActivity;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/firebase/ui/auth/KickoffActivity$1;->this$0:Lcom/firebase/ui/auth/KickoffActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 47
    iget-object p1, p0, Lcom/firebase/ui/auth/KickoffActivity$1;->this$0:Lcom/firebase/ui/auth/KickoffActivity;

    const/16 v0, 0x14

    .line 48
    invoke-static {v0}, Lcom/firebase/ui/auth/IdpResponse;->getErrorCodeIntent(I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p1, v1, v0}, Lcom/firebase/ui/auth/KickoffActivity;->finish(ILandroid/content/Intent;)V

    return-void
.end method
