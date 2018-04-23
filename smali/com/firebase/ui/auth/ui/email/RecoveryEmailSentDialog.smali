.class public Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "RecoveryEmailSentDialog.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecoveryEmailSentDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog;ILandroid/content/Intent;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog;->finish(ILandroid/content/Intent;)V

    return-void
.end method

.method private finish(ILandroid/content/Intent;)V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 48
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public static show(Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V
    .locals 3

    .line 22
    new-instance v0, Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog;

    invoke-direct {v0}, Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog;-><init>()V

    .line 23
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_email"

    .line 24
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog;->setArguments(Landroid/os/Bundle;)V

    const-string p0, "RecoveryEmailSentDialog"

    .line 26
    invoke-virtual {v0, p1, p0}, Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 32
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/firebase/ui/auth/R$string;->fui_title_confirm_recover_password:I

    .line 33
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/firebase/ui/auth/R$string;->fui_confirm_recovery_body:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_email"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog$1;

    invoke-direct {v0, p0}, Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog$1;-><init>(Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog;)V

    .line 36
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
