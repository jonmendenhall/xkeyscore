.class public Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;
.super Lcom/firebase/ui/auth/ui/FragmentBase;
.source "CheckEmailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/firebase/ui/auth/util/ui/ImeHelper$DonePressedListener;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$CheckEmailListener;
    }
.end annotation


# static fields
.field private static final RC_HINT:I = 0xd

.field private static final RC_SIGN_IN:I = 0x10

.field private static final RC_WELCOME_BACK_IDP:I = 0xf

.field public static final TAG:Ljava/lang/String; = "CheckEmailFragment"


# instance fields
.field private mEmailEditText:Landroid/widget/EditText;

.field private mEmailFieldValidator:Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;

.field private mEmailLayout:Landroid/support/design/widget/TextInputLayout;

.field private mLastCredential:Lcom/google/android/gms/auth/api/credentials/Credential;

.field private mListener:Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$CheckEmailListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/FragmentBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;)Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$CheckEmailListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->mListener:Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$CheckEmailListener;

    return-object p0
.end method

.method private checkAccountExists(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 187
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->getDialogHolder()Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    move-result-object v0

    sget v1, Lcom/firebase/ui/auth/R$string;->fui_progress_dialog_checking_accounts:I

    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->showLoadingDialog(I)V

    .line 192
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->mLastCredential:Lcom/google/android/gms/auth/api/credentials/Credential;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->mLastCredential:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/Credential;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->mLastCredential:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/Credential;->getName()Ljava/lang/String;

    move-result-object v1

    .line 194
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->mLastCredential:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/Credential;->getProfilePictureUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 200
    :goto_0
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->getAuthHelper()Lcom/firebase/ui/auth/util/AuthHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/ui/auth/util/AuthHelper;->getFirebaseAuth()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v2

    .line 201
    invoke-static {v2, p1}, Lcom/firebase/ui/auth/util/data/ProviderUtils;->fetchTopProvider(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 202
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$2;

    invoke-direct {v4, p0, p1, v1, v0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$2;-><init>(Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 219
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$1;

    invoke-direct {v1, p0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$1;-><init>(Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;)V

    .line 218
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private getEmailHintIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 237
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;

    .line 238
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 239
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/firebase/ui/auth/util/GoogleApiHelper;->getSafeAutoManageId()I

    move-result v2

    new-instance v3, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$3;

    invoke-direct {v3, p0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$3;-><init>(Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->enableAutoManage(Landroid/support/v4/app/FragmentActivity;ILcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 248
    new-instance v1, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;-><init>()V

    new-instance v2, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;-><init>()V

    const/4 v3, 0x1

    .line 250
    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->setShowCancelButton(Z)Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;

    move-result-object v2

    .line 251
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->build()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object v2

    .line 249
    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setHintPickerConfig(Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    move-result-object v1

    .line 252
    invoke-virtual {v1, v3}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setEmailAddressIdentifierSupported(Z)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->build()Lcom/google/android/gms/auth/api/credentials/HintRequest;

    move-result-object v1

    .line 255
    sget-object v2, Lcom/google/android/gms/auth/api/Auth;->CredentialsApi:Lcom/google/android/gms/auth/api/credentials/CredentialsApi;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/auth/api/credentials/CredentialsApi;->getHintPickerIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/HintRequest;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/firebase/ui/auth/data/model/FlowParameters;Ljava/lang/String;)Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;
    .locals 3
    .param p0    # Lcom/firebase/ui/auth/data/model/FlowParameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 89
    new-instance v0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;

    invoke-direct {v0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;-><init>()V

    .line 90
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_flow_params"

    .line 91
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "extra_email"

    .line 92
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private showEmailAutoCompleteHint()V
    .locals 3

    .line 230
    :try_start_0
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->getEmailHintIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->startIntentSenderForResult(Landroid/content/IntentSender;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CheckEmailFragment"

    const-string v2, "Unable to start hint intent"

    .line 232
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private validateAndProceed()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->mEmailFieldValidator:Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;

    invoke-virtual {v1, v0}, Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;->validate(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-direct {p0, v0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->checkAccountExists(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 126
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/FragmentBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$CheckEmailListener;

    if-nez v0, :cond_0

    .line 130
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Activity must implement CheckEmailListener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$CheckEmailListener;

    iput-object v0, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->mListener:Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$CheckEmailListener;

    if-eqz p1, :cond_1

    return-void

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_email"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->validateAndProceed()V

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object p1

    iget-boolean p1, p1, Lcom/firebase/ui/auth/data/model/FlowParameters;->enableHints:Z

    if-eqz p1, :cond_3

    .line 146
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->showEmailAutoCompleteHint()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 158
    invoke-super {p0, p1, p2, p3}, Lcom/firebase/ui/auth/ui/FragmentBase;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 174
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->finish(ILandroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    if-eqz p3, :cond_0

    const-string p1, "com.google.android.gms.credentials.Credential"

    .line 162
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/credentials/Credential;

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->mLastCredential:Lcom/google/android/gms/auth/api/credentials/Credential;

    .line 163
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->mLastCredential:Lcom/google/android/gms/auth/api/credentials/Credential;

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->mEmailEditText:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->mLastCredential:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/credentials/Credential;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->validateAndProceed()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 262
    sget v0, Lcom/firebase/ui/auth/R$id;->button_next:I

    if-ne p1, v0, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->validateAndProceed()V

    goto :goto_0

    .line 264
    :cond_0
    sget v0, Lcom/firebase/ui/auth/R$id;->email_layout:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/firebase/ui/auth/R$id;->email:I

    if-ne p1, v0, :cond_2

    .line 265
    :cond_1
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->mEmailLayout:Landroid/support/design/widget/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 103
    sget p3, Lcom/firebase/ui/auth/R$layout;->fui_check_email_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 106
    sget p2, Lcom/firebase/ui/auth/R$id;->email_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/TextInputLayout;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->mEmailLayout:Landroid/support/design/widget/TextInputLayout;

    .line 107
    sget p2, Lcom/firebase/ui/auth/R$id;->email:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->mEmailEditText:Landroid/widget/EditText;

    .line 108
    new-instance p2, Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;

    iget-object p3, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->mEmailLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {p2, p3}, Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->mEmailFieldValidator:Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;

    .line 109
    iget-object p2, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->mEmailLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p2, p0}, Landroid/support/design/widget/TextInputLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object p2, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object p2, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-static {p2, p0}, Lcom/firebase/ui/auth/util/ui/ImeHelper;->setImeOnDoneListener(Landroid/widget/EditText;Lcom/firebase/ui/auth/util/ui/ImeHelper$DonePressedListener;)V

    .line 114
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_0

    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object p2

    iget-boolean p2, p2, Lcom/firebase/ui/auth/data/model/FlowParameters;->enableHints:Z

    if-eqz p2, :cond_0

    .line 115
    iget-object p2, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->mEmailEditText:Landroid/widget/EditText;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setImportantForAutofill(I)V

    .line 119
    :cond_0
    sget p2, Lcom/firebase/ui/auth/R$id;->button_next:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDonePressed()V
    .locals 0

    .line 271
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->validateAndProceed()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "has_existing_instance"

    const/4 v1, 0x1

    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/FragmentBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
