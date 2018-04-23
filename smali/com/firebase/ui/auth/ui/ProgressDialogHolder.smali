.class public Lcom/firebase/ui/auth/ui/ProgressDialogHolder;
.super Ljava/lang/Object;
.source "ProgressDialogHolder.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->mContext:Landroid/content/Context;

    return-void
.end method

.method private showLoadingDialog(Ljava/lang/String;)V
    .locals 2

    .line 20
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->dismissDialog()V

    .line 22
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 24
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 25
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public isProgressDialogShowing()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showLoadingDialog(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 33
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->showLoadingDialog(Ljava/lang/String;)V

    return-void
.end method
