.class public final Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "CompletableProgressDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ComProgressDialog"


# instance fields
.field private mMessage:Ljava/lang/CharSequence;

.field mMessageView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mProgress:Landroid/widget/ProgressBar;

.field private mSuccessImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/support/v4/app/FragmentManager;)Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;
    .locals 2

    .line 40
    new-instance v0, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;

    invoke-direct {v0}, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;-><init>()V

    const-string v1, "ComProgressDialog"

    .line 41
    invoke-virtual {v0, p0, v1}, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;->showAllowingStateLoss(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 1

    .line 75
    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;->mSuccessImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;->mSuccessImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/firebase/ui/auth/R$layout;->fui_phone_progress_dialog:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 63
    sget v0, Lcom/firebase/ui/auth/R$id;->progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 64
    sget v0, Lcom/firebase/ui/auth/R$id;->progress_msg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 65
    sget v0, Lcom/firebase/ui/auth/R$id;->progress_success_imaage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;->mSuccessImage:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 71
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;->mMessage:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public showAllowingStateLoss(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 51
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
