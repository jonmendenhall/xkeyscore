.class public Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;
.super Lcom/firebase/ui/auth/ui/AppCompatBase;
.source "WelcomeBackPasswordPrompt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/firebase/ui/auth/util/ui/ImeHelper$DonePressedListener;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WelcomeBackPassword"


# instance fields
.field private mEmail:Ljava/lang/String;

.field private mIdpResponse:Lcom/firebase/ui/auth/IdpResponse;

.field private mPasswordField:Landroid/widget/EditText;

.field private mPasswordLayout:Landroid/support/design/widget/TextInputLayout;

.field private mSaveSmartLock:Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/AppCompatBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;)Landroid/support/design/widget/TextInputLayout;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->mPasswordLayout:Landroid/support/design/widget/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;)Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->mSaveSmartLock:Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;

    return-object p0
.end method

.method public static createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;Lcom/firebase/ui/auth/IdpResponse;)Landroid/content/Intent;
    .locals 1

    .line 73
    const-class v0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;

    invoke-static {p0, v0, p1}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->createBaseIntent(Landroid/content/Context;Ljava/lang/Class;Lcom/firebase/ui/auth/data/model/FlowParameters;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "extra_idp_response"

    .line 74
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private validateAndSignIn()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->mEmail:Ljava/lang/String;

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->mPasswordField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->validateAndSignIn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private validateAndSignIn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 137
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->mPasswordLayout:Landroid/support/design/widget/TextInputLayout;

    sget p2, Lcom/firebase/ui/auth/R$string;->fui_required_field:I

    invoke-virtual {p0, p2}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->mPasswordLayout:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->getDialogHolder()Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    move-result-object v0

    sget v1, Lcom/firebase/ui/auth/R$string;->fui_progress_dialog_signing_in:I

    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->showLoadingDialog(I)V

    .line 145
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->mIdpResponse:Lcom/firebase/ui/auth/IdpResponse;

    invoke-static {v0}, Lcom/firebase/ui/auth/util/data/ProviderUtils;->getAuthCredential(Lcom/firebase/ui/auth/IdpResponse;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object v0

    if-nez v0, :cond_1

    .line 149
    new-instance v1, Lcom/firebase/ui/auth/IdpResponse$Builder;

    new-instance v2, Lcom/firebase/ui/auth/data/model/User$Builder;

    const-string v3, "password"

    invoke-direct {v2, v3, p1}, Lcom/firebase/ui/auth/data/model/User$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v2}, Lcom/firebase/ui/auth/data/model/User$Builder;->build()Lcom/firebase/ui/auth/data/model/User;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/firebase/ui/auth/IdpResponse$Builder;-><init>(Lcom/firebase/ui/auth/data/model/User;)V

    .line 151
    invoke-virtual {v1}, Lcom/firebase/ui/auth/IdpResponse$Builder;->build()Lcom/firebase/ui/auth/IdpResponse;

    move-result-object v1

    goto :goto_0

    .line 153
    :cond_1
    new-instance v1, Lcom/firebase/ui/auth/IdpResponse$Builder;

    iget-object v2, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->mIdpResponse:Lcom/firebase/ui/auth/IdpResponse;

    invoke-virtual {v2}, Lcom/firebase/ui/auth/IdpResponse;->getUser()Lcom/firebase/ui/auth/data/model/User;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/firebase/ui/auth/IdpResponse$Builder;-><init>(Lcom/firebase/ui/auth/data/model/User;)V

    iget-object v2, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->mIdpResponse:Lcom/firebase/ui/auth/IdpResponse;

    .line 154
    invoke-virtual {v2}, Lcom/firebase/ui/auth/IdpResponse;->getIdpToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/firebase/ui/auth/IdpResponse$Builder;->setToken(Ljava/lang/String;)Lcom/firebase/ui/auth/IdpResponse$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->mIdpResponse:Lcom/firebase/ui/auth/IdpResponse;

    .line 155
    invoke-virtual {v2}, Lcom/firebase/ui/auth/IdpResponse;->getIdpSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/firebase/ui/auth/IdpResponse$Builder;->setSecret(Ljava/lang/String;)Lcom/firebase/ui/auth/IdpResponse$Builder;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lcom/firebase/ui/auth/IdpResponse$Builder;->build()Lcom/firebase/ui/auth/IdpResponse;

    move-result-object v1

    .line 160
    :goto_0
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->getAuthHelper()Lcom/firebase/ui/auth/util/AuthHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/ui/auth/util/AuthHelper;->getFirebaseAuth()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v2

    .line 161
    invoke-virtual {v2, p1, p2}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v2, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;

    invoke-direct {v2, p0, v0, p2, v1}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;-><init>(Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Lcom/firebase/ui/auth/IdpResponse;)V

    .line 162
    invoke-virtual {p1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/firebase/ui/auth/ui/TaskFailureLogger;

    const-string v0, "WelcomeBackPassword"

    const-string v1, "Error signing in with email and password"

    invoke-direct {p2, v0, v1}, Lcom/firebase/ui/auth/ui/TaskFailureLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$1;

    invoke-direct {p2, p0}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$1;-><init>(Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;)V

    .line 194
    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 115
    sget v0, Lcom/firebase/ui/auth/R$id;->button_done:I

    if-ne p1, v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->validateAndSignIn()V

    goto :goto_0

    .line 117
    :cond_0
    sget v0, Lcom/firebase/ui/auth/R$id;->trouble_signing_in:I

    if-ne p1, v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object p1

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->mEmail:Ljava/lang/String;

    .line 118
    invoke-static {p0, p1, v0}, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;->createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    const/16 v0, 0x14

    .line 122
    invoke-static {v0}, Lcom/firebase/ui/auth/IdpResponse;->getErrorCodeIntent(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->finish(ILandroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 79
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/AppCompatBase;->onCreate(Landroid/os/Bundle;)V

    .line 80
    sget p1, Lcom/firebase/ui/auth/R$layout;->fui_welcome_back_password_prompt_layout:I

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 85
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->getAuthHelper()Lcom/firebase/ui/auth/util/AuthHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/firebase/ui/auth/util/AuthHelper;->getSaveSmartLockInstance(Lcom/firebase/ui/auth/ui/HelperActivityBase;)Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->mSaveSmartLock:Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;

    .line 86
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/firebase/ui/auth/IdpResponse;->fromResultIntent(Landroid/content/Intent;)Lcom/firebase/ui/auth/IdpResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->mIdpResponse:Lcom/firebase/ui/auth/IdpResponse;

    .line 87
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->mIdpResponse:Lcom/firebase/ui/auth/IdpResponse;

    invoke-virtual {p1}, Lcom/firebase/ui/auth/IdpResponse;->getEmail()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->mEmail:Ljava/lang/String;

    .line 89
    sget p1, Lcom/firebase/ui/auth/R$id;->password_layout:I

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TextInputLayout;

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->mPasswordLayout:Landroid/support/design/widget/TextInputLayout;

    .line 90
    sget p1, Lcom/firebase/ui/auth/R$id;->password:I

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->mPasswordField:Landroid/widget/EditText;

    .line 92
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->mPasswordField:Landroid/widget/EditText;

    invoke-static {p1, p0}, Lcom/firebase/ui/auth/util/ui/ImeHelper;->setImeOnDoneListener(Landroid/widget/EditText;Lcom/firebase/ui/auth/util/ui/ImeHelper$DonePressedListener;)V

    .line 95
    sget p1, Lcom/firebase/ui/auth/R$string;->fui_welcome_back_password_prompt_body:I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->mEmail:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v1}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 97
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v2, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 99
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->mEmail:Ljava/lang/String;

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    const/16 v3, 0x12

    .line 99
    invoke-virtual {v1, v2, p1, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 104
    sget p1, Lcom/firebase/ui/auth/R$id;->welcome_back_password_body:I

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 105
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    sget p1, Lcom/firebase/ui/auth/R$id;->button_done:I

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    sget p1, Lcom/firebase/ui/auth/R$id;->trouble_signing_in:I

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDonePressed()V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->validateAndSignIn()V

    return-void
.end method
