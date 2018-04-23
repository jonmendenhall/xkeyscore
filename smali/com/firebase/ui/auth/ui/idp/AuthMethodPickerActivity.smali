.class public Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;
.super Lcom/firebase/ui/auth/ui/AppCompatBase;
.source "AuthMethodPickerActivity.java"

# interfaces
.implements Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final RC_ACCOUNT_LINK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AuthMethodPicker"


# instance fields
.field private mProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/firebase/ui/auth/provider/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveSmartLock:Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/AppCompatBase;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;)Landroid/content/Intent;
    .locals 1

    .line 72
    const-class v0, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;

    invoke-static {p0, v0, p1}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->createBaseIntent(Landroid/content/Context;Ljava/lang/Class;Lcom/firebase/ui/auth/data/model/FlowParameters;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private populateIdpList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/firebase/ui/auth/AuthUI$IdpConfig;",
            ">;)V"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->mProviders:Ljava/util/List;

    .line 102
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/ui/auth/AuthUI$IdpConfig;

    .line 103
    invoke-virtual {v0}, Lcom/firebase/ui/auth/AuthUI$IdpConfig;->getProviderId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "password"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_1
    const-string v1, "phone"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_2
    const-string v1, "facebook.com"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_3
    const-string v4, "google.com"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :sswitch_4
    const-string v1, "twitter.com"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_2

    :cond_0
    :goto_1
    move v1, v3

    :goto_2
    packed-switch v1, :pswitch_data_0

    const-string v1, "AuthMethodPicker"

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered unknown provider parcel with type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Lcom/firebase/ui/auth/AuthUI$IdpConfig;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->mProviders:Ljava/util/List;

    new-instance v1, Lcom/firebase/ui/auth/provider/PhoneProvider;

    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/firebase/ui/auth/provider/PhoneProvider;-><init>(Landroid/app/Activity;Lcom/firebase/ui/auth/data/model/FlowParameters;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->mProviders:Ljava/util/List;

    new-instance v1, Lcom/firebase/ui/auth/provider/EmailProvider;

    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/firebase/ui/auth/provider/EmailProvider;-><init>(Landroid/app/Activity;Lcom/firebase/ui/auth/data/model/FlowParameters;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 112
    :pswitch_2
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->mProviders:Ljava/util/List;

    new-instance v1, Lcom/firebase/ui/auth/provider/TwitterProvider;

    invoke-direct {v1, p0}, Lcom/firebase/ui/auth/provider/TwitterProvider;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 108
    :pswitch_3
    iget-object v1, p0, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->mProviders:Ljava/util/List;

    new-instance v2, Lcom/firebase/ui/auth/provider/FacebookProvider;

    .line 109
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v3

    iget v3, v3, Lcom/firebase/ui/auth/data/model/FlowParameters;->themeId:I

    invoke-direct {v2, v0, v3}, Lcom/firebase/ui/auth/provider/FacebookProvider;-><init>(Lcom/firebase/ui/auth/AuthUI$IdpConfig;I)V

    .line 108
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 105
    :pswitch_4
    iget-object v1, p0, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->mProviders:Ljava/util/List;

    new-instance v2, Lcom/firebase/ui/auth/provider/GoogleProvider;

    invoke-direct {v2, p0, v0}, Lcom/firebase/ui/auth/provider/GoogleProvider;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/firebase/ui/auth/AuthUI$IdpConfig;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 126
    :cond_1
    sget p1, Lcom/firebase/ui/auth/R$id;->btn_holder:I

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 127
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->mProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/ui/auth/provider/Provider;

    .line 128
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 129
    invoke-interface {v2}, Lcom/firebase/ui/auth/provider/Provider;->getButtonLayout()I

    move-result v4

    invoke-virtual {v3, v4, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 131
    new-instance v4, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity$1;

    invoke-direct {v4, p0, v2}, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity$1;-><init>(Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;Lcom/firebase/ui/auth/provider/Provider;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    instance-of v4, v2, Lcom/firebase/ui/auth/provider/IdpProvider;

    if-eqz v4, :cond_2

    .line 141
    check-cast v2, Lcom/firebase/ui/auth/provider/IdpProvider;

    invoke-interface {v2, p0}, Lcom/firebase/ui/auth/provider/IdpProvider;->setAuthenticationCallback(Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;)V

    .line 143
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d185c7a -> :sswitch_4
        -0x5b91fbb4 -> :sswitch_3
        -0x15becda7 -> :sswitch_2
        0x65b3d6e -> :sswitch_1
        0x4889ba9b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 149
    invoke-super {p0, p1, p2, p3}, Lcom/firebase/ui/auth/ui/AppCompatBase;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 151
    invoke-virtual {p0, p2, p3}, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->finish(ILandroid/content/Intent;)V

    goto :goto_1

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->mProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/ui/auth/provider/Provider;

    .line 154
    invoke-interface {v1, p1, p2, p3}, Lcom/firebase/ui/auth/provider/Provider;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 78
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/AppCompatBase;->onCreate(Landroid/os/Bundle;)V

    .line 79
    sget p1, Lcom/firebase/ui/auth/R$layout;->fui_auth_method_picker_layout:I

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->getAuthHelper()Lcom/firebase/ui/auth/util/AuthHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/firebase/ui/auth/util/AuthHelper;->getSaveSmartLockInstance(Lcom/firebase/ui/auth/ui/HelperActivityBase;)Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->mSaveSmartLock:Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;

    .line 82
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object p1

    iget-object p1, p1, Lcom/firebase/ui/auth/data/model/FlowParameters;->providerInfo:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->populateIdpList(Ljava/util/List;)V

    .line 84
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object p1

    iget p1, p1, Lcom/firebase/ui/auth/data/model/FlowParameters;->logoId:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 86
    sget p1, Lcom/firebase/ui/auth/R$id;->logo:I

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 88
    sget p1, Lcom/firebase/ui/auth/R$id;->root:I

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    .line 89
    new-instance v0, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v0}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .line 90
    invoke-virtual {v0, p1}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    .line 91
    sget v1, Lcom/firebase/ui/auth/R$id;->container:I

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/ConstraintSet;->setHorizontalBias(IF)V

    .line 92
    sget v1, Lcom/firebase/ui/auth/R$id;->container:I

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/ConstraintSet;->setVerticalBias(IF)V

    .line 93
    invoke-virtual {v0, p1}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    goto :goto_0

    .line 95
    :cond_0
    sget v0, Lcom/firebase/ui/auth/R$id;->logo:I

    invoke-virtual {p0, v0}, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 96
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 183
    invoke-super {p0}, Lcom/firebase/ui/auth/ui/AppCompatBase;->onDestroy()V

    .line 184
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->mProviders:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->mProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/ui/auth/provider/Provider;

    .line 186
    instance-of v2, v1, Lcom/firebase/ui/auth/provider/GoogleProvider;

    if-eqz v2, :cond_0

    .line 187
    check-cast v1, Lcom/firebase/ui/auth/provider/GoogleProvider;

    invoke-virtual {v1}, Lcom/firebase/ui/auth/provider/GoogleProvider;->disconnect()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onFailure()V
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->getDialogHolder()Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->dismissDialog()V

    return-void
.end method

.method public onSuccess(Lcom/firebase/ui/auth/IdpResponse;)V
    .locals 5

    .line 161
    invoke-static {p1}, Lcom/firebase/ui/auth/util/data/ProviderUtils;->getAuthCredential(Lcom/firebase/ui/auth/IdpResponse;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->getAuthHelper()Lcom/firebase/ui/auth/util/AuthHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/ui/auth/util/AuthHelper;->getFirebaseAuth()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    .line 163
    invoke-virtual {v1, v0}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;

    iget-object v3, p0, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->mSaveSmartLock:Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;

    const/4 v4, 0x3

    invoke-direct {v2, p0, v3, v4, p1}, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;-><init>(Lcom/firebase/ui/auth/ui/HelperActivityBase;Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;ILcom/firebase/ui/auth/IdpResponse;)V

    .line 164
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, Lcom/firebase/ui/auth/ui/TaskFailureLogger;

    const-string v2, "AuthMethodPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firebase sign in with credential "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Lcom/google/firebase/auth/AuthCredential;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " unsuccessful. Visit https://console.firebase.google.com to enable it."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/firebase/ui/auth/ui/TaskFailureLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
