.class public Lcom/firebase/ui/auth/provider/EmailProvider;
.super Ljava/lang/Object;
.source "EmailProvider.java"

# interfaces
.implements Lcom/firebase/ui/auth/provider/Provider;


# static fields
.field private static final RC_EMAIL_FLOW:I = 0x2


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFlowParameters:Lcom/firebase/ui/auth/data/model/FlowParameters;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/firebase/ui/auth/data/model/FlowParameters;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/firebase/ui/auth/provider/EmailProvider;->mActivity:Landroid/app/Activity;

    .line 20
    iput-object p2, p0, Lcom/firebase/ui/auth/provider/EmailProvider;->mFlowParameters:Lcom/firebase/ui/auth/data/model/FlowParameters;

    return-void
.end method


# virtual methods
.method public getButtonLayout()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .line 31
    sget v0, Lcom/firebase/ui/auth/R$layout;->fui_provider_button_email:I

    return v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 25
    sget v0, Lcom/firebase/ui/auth/R$string;->fui_provider_name_email:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 44
    iget-object p2, p0, Lcom/firebase/ui/auth/provider/EmailProvider;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 45
    iget-object p1, p0, Lcom/firebase/ui/auth/provider/EmailProvider;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public startLogin(Landroid/app/Activity;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/firebase/ui/auth/provider/EmailProvider;->mFlowParameters:Lcom/firebase/ui/auth/data/model/FlowParameters;

    .line 37
    invoke-static {p1, v0}, Lcom/firebase/ui/auth/ui/email/EmailActivity;->createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
