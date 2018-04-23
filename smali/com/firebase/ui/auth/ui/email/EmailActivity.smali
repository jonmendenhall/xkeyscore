.class public Lcom/firebase/ui/auth/ui/email/EmailActivity;
.super Lcom/firebase/ui/auth/ui/AppCompatBase;
.source "EmailActivity.java"

# interfaces
.implements Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$CheckEmailListener;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final RC_SIGN_IN:I = 0x11

.field public static final RC_WELCOME_BACK_IDP:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/AppCompatBase;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-static {p0, p1, v0}, Lcom/firebase/ui/auth/ui/email/EmailActivity;->createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 50
    const-class v0, Lcom/firebase/ui/auth/ui/email/EmailActivity;

    invoke-static {p0, v0, p1}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->createBaseIntent(Landroid/content/Context;Ljava/lang/Class;Lcom/firebase/ui/auth/data/model/FlowParameters;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "extra_email"

    .line 51
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private setSlideAnimation()V
    .locals 2

    .line 136
    sget v0, Lcom/firebase/ui/auth/R$anim;->fui_slide_in_right:I

    sget v1, Lcom/firebase/ui/auth/R$anim;->fui_slide_out_left:I

    invoke-virtual {p0, v0, v1}, Lcom/firebase/ui/auth/ui/email/EmailActivity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/firebase/ui/auth/ui/AppCompatBase;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 86
    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lcom/firebase/ui/auth/ui/email/EmailActivity;->finish(ILandroid/content/Intent;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 56
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/AppCompatBase;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget v0, Lcom/firebase/ui/auth/R$layout;->fui_activity_register_email:I

    invoke-virtual {p0, v0}, Lcom/firebase/ui/auth/ui/email/EmailActivity;->setContentView(I)V

    if-eqz p1, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/EmailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_email"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/EmailActivity;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->newInstance(Lcom/firebase/ui/auth/data/model/FlowParameters;Ljava/lang/String;)Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;

    move-result-object p1

    .line 68
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/EmailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/firebase/ui/auth/R$id;->fragment_register_email:I

    const-string v2, "CheckEmailFragment"

    .line 69
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onExistingEmailUser(Lcom/firebase/ui/auth/data/model/User;)V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/EmailActivity;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v0

    new-instance v1, Lcom/firebase/ui/auth/IdpResponse$Builder;

    invoke-direct {v1, p1}, Lcom/firebase/ui/auth/IdpResponse$Builder;-><init>(Lcom/firebase/ui/auth/data/model/User;)V

    .line 97
    invoke-virtual {v1}, Lcom/firebase/ui/auth/IdpResponse$Builder;->build()Lcom/firebase/ui/auth/IdpResponse;

    move-result-object p1

    .line 94
    invoke-static {p0, v0, p1}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;Lcom/firebase/ui/auth/IdpResponse;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x11

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/firebase/ui/auth/ui/email/EmailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 100
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/email/EmailActivity;->setSlideAnimation()V

    return-void
.end method

.method public onExistingIdpUser(Lcom/firebase/ui/auth/data/model/User;)V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/EmailActivity;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;Lcom/firebase/ui/auth/data/model/User;Lcom/firebase/ui/auth/IdpResponse;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x12

    .line 106
    invoke-virtual {p0, p1, v0}, Lcom/firebase/ui/auth/ui/email/EmailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 109
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/email/EmailActivity;->setSlideAnimation()V

    return-void
.end method

.method public onNewUser(Lcom/firebase/ui/auth/data/model/User;)V
    .locals 4

    .line 117
    sget v0, Lcom/firebase/ui/auth/R$id;->email_layout:I

    invoke-virtual {p0, v0}, Lcom/firebase/ui/auth/ui/email/EmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    .line 119
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/EmailActivity;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v1

    iget-boolean v1, v1, Lcom/firebase/ui/auth/data/model/FlowParameters;->allowNewEmailAccounts:Z

    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/EmailActivity;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v1

    .line 120
    invoke-static {v1, p1}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->newInstance(Lcom/firebase/ui/auth/data/model/FlowParameters;Lcom/firebase/ui/auth/data/model/User;)Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    move-result-object p1

    .line 123
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/EmailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/firebase/ui/auth/R$id;->fragment_register_email:I

    const-string v3, "RegisterEmailFragment"

    .line 124
    invoke-virtual {v1, v2, p1, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    if-eqz v0, :cond_0

    const-string v1, "email_field"

    .line 126
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 130
    :cond_1
    sget p1, Lcom/firebase/ui/auth/R$string;->fui_error_email_does_not_exist:I

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/email/EmailActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "has_existing_instance"

    const/4 v1, 0x1

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/AppCompatBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
