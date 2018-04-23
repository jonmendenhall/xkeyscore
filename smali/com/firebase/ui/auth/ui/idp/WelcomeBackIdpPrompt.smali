.class public Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;
.super Lcom/firebase/ui/auth/ui/AppCompatBase;
.source "WelcomeBackIdpPrompt.java"

# interfaces
.implements Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$FinishListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WelcomeBackIdpPrompt"


# instance fields
.field private mIdpProvider:Lcom/firebase/ui/auth/provider/IdpProvider;

.field private mPrevCredential:Lcom/google/firebase/auth/AuthCredential;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/AppCompatBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;)Lcom/firebase/ui/auth/provider/IdpProvider;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->mIdpProvider:Lcom/firebase/ui/auth/provider/IdpProvider;

    return-object p0
.end method

.method static synthetic access$100(Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->finishWithError()V

    return-void
.end method

.method static synthetic access$200(Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;)Lcom/google/firebase/auth/AuthCredential;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->mPrevCredential:Lcom/google/firebase/auth/AuthCredential;

    return-object p0
.end method

.method public static createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;Lcom/firebase/ui/auth/data/model/User;Lcom/firebase/ui/auth/IdpResponse;)Landroid/content/Intent;
    .locals 1
    .param p3    # Lcom/firebase/ui/auth/IdpResponse;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 68
    const-class v0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;

    invoke-static {p0, v0, p1}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->createBaseIntent(Landroid/content/Context;Ljava/lang/Class;Lcom/firebase/ui/auth/data/model/FlowParameters;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "extra_user"

    .line 69
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "extra_idp_response"

    .line 70
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private finishWithError()V
    .locals 2

    .line 192
    sget v0, Lcom/firebase/ui/auth/R$string;->fui_general_error:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0x14

    .line 193
    invoke-static {v0}, Lcom/firebase/ui/auth/IdpResponse;->getErrorCodeIntent(I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->finish(ILandroid/content/Intent;)V

    return-void
.end method

.method private getIdpPromptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 130
    sget v0, Lcom/firebase/ui/auth/R$string;->fui_welcome_back_idp_prompt:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->mIdpProvider:Lcom/firebase/ui/auth/provider/IdpProvider;

    invoke-interface {p1, p0}, Lcom/firebase/ui/auth/provider/IdpProvider;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 135
    invoke-super {p0, p1, p2, p3}, Lcom/firebase/ui/auth/ui/AppCompatBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 136
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->mIdpProvider:Lcom/firebase/ui/auth/provider/IdpProvider;

    invoke-interface {v0, p1, p2, p3}, Lcom/firebase/ui/auth/provider/IdpProvider;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 75
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/AppCompatBase;->onCreate(Landroid/os/Bundle;)V

    .line 76
    sget p1, Lcom/firebase/ui/auth/R$layout;->fui_welcome_back_idp_prompt_layout:I

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/firebase/ui/auth/IdpResponse;->fromResultIntent(Landroid/content/Intent;)Lcom/firebase/ui/auth/IdpResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    invoke-static {p1}, Lcom/firebase/ui/auth/util/data/ProviderUtils;->getAuthCredential(Lcom/firebase/ui/auth/IdpResponse;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->mPrevCredential:Lcom/google/firebase/auth/AuthCredential;

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/firebase/ui/auth/data/model/User;->getUser(Landroid/content/Intent;)Lcom/firebase/ui/auth/data/model/User;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/firebase/ui/auth/data/model/User;->getProviderId()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v1

    iget-object v1, v1, Lcom/firebase/ui/auth/data/model/FlowParameters;->providerInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x14

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/ui/auth/AuthUI$IdpConfig;

    .line 87
    invoke-virtual {v2}, Lcom/firebase/ui/auth/AuthUI$IdpConfig;->getProviderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x6d185c7a

    if-eq v6, v7, :cond_4

    const v7, -0x5b91fbb4

    if-eq v6, v7, :cond_3

    const v7, -0x15becda7

    if-eq v6, v7, :cond_2

    goto :goto_1

    :cond_2
    const-string v6, "facebook.com"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const-string v6, "google.com"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v5, v4

    goto :goto_1

    :cond_4
    const-string v6, "twitter.com"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v5, 0x2

    :cond_5
    :goto_1
    packed-switch v5, :pswitch_data_0

    const-string p1, "WelcomeBackIdpPrompt"

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {v3}, Lcom/firebase/ui/auth/IdpResponse;->getErrorCodeIntent(I)Landroid/content/Intent;

    move-result-object p1

    .line 101
    invoke-virtual {p0, v4, p1}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->finish(ILandroid/content/Intent;)V

    return-void

    .line 97
    :pswitch_0
    new-instance v2, Lcom/firebase/ui/auth/provider/TwitterProvider;

    invoke-direct {v2, p0}, Lcom/firebase/ui/auth/provider/TwitterProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->mIdpProvider:Lcom/firebase/ui/auth/provider/IdpProvider;

    goto :goto_0

    .line 93
    :pswitch_1
    new-instance v3, Lcom/firebase/ui/auth/provider/FacebookProvider;

    .line 94
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v4

    iget v4, v4, Lcom/firebase/ui/auth/data/model/FlowParameters;->themeId:I

    invoke-direct {v3, v2, v4}, Lcom/firebase/ui/auth/provider/FacebookProvider;-><init>(Lcom/firebase/ui/auth/AuthUI$IdpConfig;I)V

    iput-object v3, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->mIdpProvider:Lcom/firebase/ui/auth/provider/IdpProvider;

    goto/16 :goto_0

    .line 90
    :pswitch_2
    new-instance v3, Lcom/firebase/ui/auth/provider/GoogleProvider;

    invoke-virtual {p1}, Lcom/firebase/ui/auth/data/model/User;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v2, v4}, Lcom/firebase/ui/auth/provider/GoogleProvider;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/firebase/ui/auth/AuthUI$IdpConfig;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->mIdpProvider:Lcom/firebase/ui/auth/provider/IdpProvider;

    goto/16 :goto_0

    .line 108
    :cond_6
    iget-object v1, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->mIdpProvider:Lcom/firebase/ui/auth/provider/IdpProvider;

    if-nez v1, :cond_7

    const-string p1, "WelcomeBackIdpPrompt"

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firebase login unsuccessful. Account linking failed due to provider not enabled by application: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {v3}, Lcom/firebase/ui/auth/IdpResponse;->getErrorCodeIntent(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->finish(ILandroid/content/Intent;)V

    return-void

    .line 116
    :cond_7
    sget v0, Lcom/firebase/ui/auth/R$id;->welcome_back_idp_prompt:I

    invoke-virtual {p0, v0}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    invoke-virtual {p1}, Lcom/firebase/ui/auth/data/model/User;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->getIdpPromptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->mIdpProvider:Lcom/firebase/ui/auth/provider/IdpProvider;

    invoke-interface {p1, p0}, Lcom/firebase/ui/auth/provider/IdpProvider;->setAuthenticationCallback(Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;)V

    .line 120
    sget p1, Lcom/firebase/ui/auth/R$id;->welcome_back_idp_button:I

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$1;

    invoke-direct {v0, p0}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$1;-><init>(Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFailure()V
    .locals 0

    .line 188
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->finishWithError()V

    return-void
.end method

.method public onSuccess(Lcom/firebase/ui/auth/IdpResponse;)V
    .locals 5

    .line 141
    invoke-static {p1}, Lcom/firebase/ui/auth/util/data/ProviderUtils;->getAuthCredential(Lcom/firebase/ui/auth/IdpResponse;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "WelcomeBackIdpPrompt"

    const-string v0, "No credential returned"

    .line 143
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/16 v0, 0x14

    .line 144
    invoke-static {v0}, Lcom/firebase/ui/auth/IdpResponse;->getErrorCodeIntent(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->finish(ILandroid/content/Intent;)V

    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->getAuthHelper()Lcom/firebase/ui/auth/util/AuthHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/ui/auth/util/AuthHelper;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    if-nez v1, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->getAuthHelper()Lcom/firebase/ui/auth/util/AuthHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/ui/auth/util/AuthHelper;->getFirebaseAuth()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    .line 151
    invoke-virtual {v1, v0}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$3;

    invoke-direct {v1, p0, p1}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$3;-><init>(Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;Lcom/firebase/ui/auth/IdpResponse;)V

    .line 152
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$2;

    invoke-direct {v1, p0}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$2;-><init>(Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;)V

    .line 167
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/firebase/ui/auth/ui/TaskFailureLogger;

    const-string v2, "WelcomeBackIdpPrompt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error signing in with new credential "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p1}, Lcom/firebase/ui/auth/IdpResponse;->getProviderType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/firebase/ui/auth/ui/TaskFailureLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {v1, v0}, Lcom/google/firebase/auth/FirebaseUser;->linkWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/firebase/ui/auth/ui/TaskFailureLogger;

    const-string v2, "WelcomeBackIdpPrompt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error linking with credential "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p1}, Lcom/firebase/ui/auth/IdpResponse;->getProviderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/firebase/ui/auth/ui/TaskFailureLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$FinishListener;

    invoke-direct {v1, p0, p1}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$FinishListener;-><init>(Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;Lcom/firebase/ui/auth/IdpResponse;)V

    .line 182
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :goto_0
    return-void
.end method
