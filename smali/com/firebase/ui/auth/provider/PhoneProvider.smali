.class public Lcom/firebase/ui/auth/provider/PhoneProvider;
.super Ljava/lang/Object;
.source "PhoneProvider.java"

# interfaces
.implements Lcom/firebase/ui/auth/provider/Provider;


# static fields
.field private static final RC_PHONE_FLOW:I = 0x4


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFlowParameters:Lcom/firebase/ui/auth/data/model/FlowParameters;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/firebase/ui/auth/data/model/FlowParameters;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/firebase/ui/auth/provider/PhoneProvider;->mActivity:Landroid/app/Activity;

    .line 23
    iput-object p2, p0, Lcom/firebase/ui/auth/provider/PhoneProvider;->mFlowParameters:Lcom/firebase/ui/auth/data/model/FlowParameters;

    return-void
.end method


# virtual methods
.method public getButtonLayout()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .line 34
    sget v0, Lcom/firebase/ui/auth/R$layout;->fui_provider_button_phone:I

    return v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 28
    sget v0, Lcom/firebase/ui/auth/R$string;->fui_provider_name_phone:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 55
    iget-object p2, p0, Lcom/firebase/ui/auth/provider/PhoneProvider;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 56
    iget-object p1, p0, Lcom/firebase/ui/auth/provider/PhoneProvider;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public startLogin(Landroid/app/Activity;)V
    .locals 5

    .line 41
    iget-object v0, p0, Lcom/firebase/ui/auth/provider/PhoneProvider;->mFlowParameters:Lcom/firebase/ui/auth/data/model/FlowParameters;

    iget-object v0, v0, Lcom/firebase/ui/auth/data/model/FlowParameters;->providerInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/ui/auth/AuthUI$IdpConfig;

    .line 42
    invoke-virtual {v2}, Lcom/firebase/ui/auth/AuthUI$IdpConfig;->getProviderId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-virtual {v2}, Lcom/firebase/ui/auth/AuthUI$IdpConfig;->getParams()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/firebase/ui/auth/provider/PhoneProvider;->mFlowParameters:Lcom/firebase/ui/auth/data/model/FlowParameters;

    .line 48
    invoke-static {p1, v0, v1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x4

    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
