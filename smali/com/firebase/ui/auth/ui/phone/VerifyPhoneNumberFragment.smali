.class public Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;
.super Lcom/firebase/ui/auth/ui/FragmentBase;
.source "VerifyPhoneNumberFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final RC_PHONE_HINT:I = 0x16

.field public static final TAG:Ljava/lang/String; = "VerifyPhoneFragment"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCountryListSpinner:Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;

.field private mPhoneEditText:Landroid/widget/EditText;

.field private mPhoneInputLayout:Landroid/support/design/widget/TextInputLayout;

.field private mSendCodeButton:Landroid/widget/Button;

.field private mSmsTermsText:Landroid/widget/TextView;

.field private mVerifier:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/FragmentBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->onNext()V

    return-void
.end method

.method static synthetic access$100(Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;)Landroid/support/design/widget/TextInputLayout;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->mPhoneInputLayout:Landroid/support/design/widget/TextInputLayout;

    return-object p0
.end method

.method private getPhoneHintIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 243
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;

    .line 244
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 247
    invoke-static {}, Lcom/firebase/ui/auth/util/GoogleApiHelper;->getSafeAutoManageId()I

    move-result v2

    new-instance v3, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment$3;

    invoke-direct {v3, p0}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment$3;-><init>(Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;)V

    .line 245
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->enableAutoManage(Landroid/support/v4/app/FragmentActivity;ILcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 258
    new-instance v1, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;-><init>()V

    new-instance v2, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;-><init>()V

    const/4 v3, 0x1

    .line 260
    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->setShowCancelButton(Z)Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->build()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object v2

    .line 259
    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setHintPickerConfig(Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    move-result-object v1

    .line 261
    invoke-virtual {v1, v3}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setPhoneNumberIdentifierSupported(Z)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 262
    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setEmailAddressIdentifierSupported(Z)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    move-result-object v1

    .line 263
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->build()Lcom/google/android/gms/auth/api/credentials/HintRequest;

    move-result-object v1

    .line 265
    sget-object v2, Lcom/google/android/gms/auth/api/Auth;->CredentialsApi:Lcom/google/android/gms/auth/api/credentials/CredentialsApi;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/auth/api/credentials/CredentialsApi;->getHintPickerIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/HintRequest;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getPseudoValidPhoneNumber()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->mCountryListSpinner:Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    .line 211
    iget-object v1, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->mPhoneEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 217
    :cond_0
    invoke-static {v1, v0}, Lcom/firebase/ui/auth/util/data/PhoneNumberUtils;->format(Ljava/lang/String;Lcom/firebase/ui/auth/data/model/CountryInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/firebase/ui/auth/data/model/FlowParameters;Landroid/os/Bundle;)Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;
    .locals 3

    .line 74
    new-instance v0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;

    invoke-direct {v0}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;-><init>()V

    .line 76
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_flow_params"

    .line 77
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "extra_params"

    .line 78
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private onNext()V
    .locals 3

    .line 200
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->getPseudoValidPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->mPhoneInputLayout:Landroid/support/design/widget/TextInputLayout;

    sget v1, Lcom/firebase/ui/auth/R$string;->fui_invalid_phone_number:I

    invoke-virtual {p0, v1}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->mVerifier:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->verifyPhoneNumber(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private setCountryCode(Lcom/firebase/ui/auth/data/model/PhoneNumber;)V
    .locals 4

    .line 276
    invoke-static {p1}, Lcom/firebase/ui/auth/data/model/PhoneNumber;->isCountryValid(Lcom/firebase/ui/auth/data/model/PhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->mCountryListSpinner:Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    invoke-virtual {p1}, Lcom/firebase/ui/auth/data/model/PhoneNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1}, Lcom/firebase/ui/auth/data/model/PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    .line 277
    invoke-virtual {v0, v1, p1}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->setSelectedForCountry(Ljava/util/Locale;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setPhoneNumber(Lcom/firebase/ui/auth/data/model/PhoneNumber;)V
    .locals 2

    .line 269
    invoke-static {p1}, Lcom/firebase/ui/auth/data/model/PhoneNumber;->isValid(Lcom/firebase/ui/auth/data/model/PhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->mPhoneEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/firebase/ui/auth/data/model/PhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->mPhoneEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/firebase/ui/auth/data/model/PhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method private setupCountrySpinner()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->mCountryListSpinner:Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;

    new-instance v1, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment$2;

    invoke-direct {v1, p0}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment$2;-><init>(Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;)V

    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupSendCodeButton()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->mSendCodeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupTerms()V
    .locals 4

    .line 120
    sget v0, Lcom/firebase/ui/auth/R$string;->fui_verify_phone_number:I

    invoke-virtual {p0, v0}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    sget v1, Lcom/firebase/ui/auth/R$string;->fui_sms_terms_of_service:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->mSmsTermsText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showPhoneAutoCompleteHint()V
    .locals 3

    .line 236
    :try_start_0
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->getPhoneHintIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {p0, v0, v1}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->startIntentSenderForResult(Landroid/content/IntentSender;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VerifyPhoneFragment"

    const-string v2, "Unable to start hint intent"

    .line 238
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 127
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/FragmentBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    if-nez v0, :cond_0

    .line 130
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Activity must implement PhoneVerificationHandler"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    iput-object v0, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->mVerifier:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    if-eqz p1, :cond_1

    return-void

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_params"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v0, "extra_phone_number"

    .line 146
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extra_country_code"

    .line 147
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_national_number"

    .line 148
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_2
    move-object p1, v0

    move-object v1, p1

    .line 150
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 152
    invoke-static {v0, p1}, Lcom/firebase/ui/auth/util/data/PhoneNumberUtils;->getPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/ui/auth/data/model/PhoneNumber;

    move-result-object p1

    .line 153
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->setPhoneNumber(Lcom/firebase/ui/auth/data/model/PhoneNumber;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->setCountryCode(Lcom/firebase/ui/auth/data/model/PhoneNumber;)V

    goto :goto_1

    .line 155
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 157
    invoke-static {v1}, Lcom/firebase/ui/auth/util/data/PhoneNumberUtils;->getPhoneNumber(Ljava/lang/String;)Lcom/firebase/ui/auth/data/model/PhoneNumber;

    move-result-object p1

    .line 158
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->setPhoneNumber(Lcom/firebase/ui/auth/data/model/PhoneNumber;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->setCountryCode(Lcom/firebase/ui/auth/data/model/PhoneNumber;)V

    goto :goto_1

    .line 160
    :cond_4
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object p1

    iget-boolean p1, p1, Lcom/firebase/ui/auth/data/model/FlowParameters;->enableHints:Z

    if-eqz p1, :cond_5

    .line 162
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->showPhoneAutoCompleteHint()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 168
    invoke-super {p0, p1, p2, p3}, Lcom/firebase/ui/auth/ui/FragmentBase;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x16

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "com.google.android.gms.credentials.Credential"

    .line 171
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/credentials/Credential;

    if-eqz p1, :cond_1

    .line 175
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getId()Ljava/lang/String;

    move-result-object p1

    .line 176
    iget-object p2, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->mAppContext:Landroid/content/Context;

    .line 177
    invoke-static {p1, p2}, Lcom/firebase/ui/auth/util/data/PhoneNumberUtils;->formatUsingCurrentCountry(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "VerifyPhoneFragment"

    .line 180
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to normalize phone number from hint selector:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 185
    :cond_0
    invoke-static {p2}, Lcom/firebase/ui/auth/util/data/PhoneNumberUtils;->getPhoneNumber(Ljava/lang/String;)Lcom/firebase/ui/auth/data/model/PhoneNumber;

    move-result-object p1

    .line 186
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->setPhoneNumber(Lcom/firebase/ui/auth/data/model/PhoneNumber;)V

    .line 187
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->setCountryCode(Lcom/firebase/ui/auth/data/model/PhoneNumber;)V

    .line 188
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->onNext()V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/FragmentBase;->onAttach(Landroid/content/Context;)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->onNext()V

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

    .line 95
    sget p3, Lcom/firebase/ui/auth/R$layout;->fui_phone_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 97
    sget p2, Lcom/firebase/ui/auth/R$id;->country_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->mCountryListSpinner:Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;

    .line 98
    sget p2, Lcom/firebase/ui/auth/R$id;->phone_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/TextInputLayout;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->mPhoneInputLayout:Landroid/support/design/widget/TextInputLayout;

    .line 99
    sget p2, Lcom/firebase/ui/auth/R$id;->phone_number:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->mPhoneEditText:Landroid/widget/EditText;

    .line 100
    sget p2, Lcom/firebase/ui/auth/R$id;->send_code:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->mSendCodeButton:Landroid/widget/Button;

    .line 101
    sget p2, Lcom/firebase/ui/auth/R$id;->send_sms_tos:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->mSmsTermsText:Landroid/widget/TextView;

    .line 103
    iget-object p2, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->mPhoneEditText:Landroid/widget/EditText;

    new-instance p3, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment$1;

    invoke-direct {p3, p0}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment$1;-><init>(Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;)V

    invoke-static {p2, p3}, Lcom/firebase/ui/auth/util/ui/ImeHelper;->setImeOnDoneListener(Landroid/widget/EditText;Lcom/firebase/ui/auth/util/ui/ImeHelper$DonePressedListener;)V

    .line 110
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    .line 111
    sget p3, Lcom/firebase/ui/auth/R$string;->fui_verify_phone_number_title:I

    invoke-virtual {p0, p3}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->setupCountrySpinner()V

    .line 113
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->setupSendCodeButton()V

    .line 114
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->setupTerms()V

    return-object p1
.end method

.method showError(Ljava/lang/String;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->mPhoneInputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
