.class Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog$1;
.super Ljava/lang/Object;
.source "RecoveryEmailSentDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog$1;->this$0:Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 39
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog$1;->this$0:Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    invoke-static {p1, v1, v0}, Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog;->access$000(Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog;ILandroid/content/Intent;)V

    return-void
.end method
