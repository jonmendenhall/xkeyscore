.class public Lcom/firebase/ui/auth/ui/phone/PhoneActivity;
.super Lcom/firebase/ui/auth/ui/AppCompatBase;
.source "PhoneActivity.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;
    }
.end annotation


# static fields
.field static final AUTO_RETRIEVAL_TIMEOUT_MILLIS:J = 0x1d4c0L
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final KEY_STATE:Ljava/lang/String; = "KEY_STATE"

.field private static final KEY_VERIFICATION_PHONE:Ljava/lang/String; = "KEY_VERIFICATION_PHONE"

.field private static final PHONE_VERIFICATION_LOG_TAG:Ljava/lang/String; = "PhoneVerification"

.field private static final SHORT_DELAY_MILLIS:J = 0x2eeL


# instance fields
.field private mAlertDialog:Landroid/support/v7/app/AlertDialog;

.field private mForceResendingToken:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

.field private mHandler:Landroid/os/Handler;

.field private mIsDestroyed:Ljava/lang/Boolean;

.field private mPhoneNumber:Ljava/lang/String;

.field mProgressDialog:Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mVerificationId:Ljava/lang/String;

.field private mVerificationState:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/AppCompatBase;-><init>()V

    const/4 v0, 0x0

    .line 73
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mIsDestroyed:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->dismissLoadingDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->showSubmitCodeFragment()V

    return-void
.end method

.method static synthetic access$1002(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;)Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mVerificationState:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->completeLoadingDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;Lcom/google/firebase/auth/FirebaseUser;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->finish(Lcom/google/firebase/auth/FirebaseUser;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;)Ljava/lang/Boolean;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mIsDestroyed:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->onVerificationSuccess(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    return-void
.end method

.method static synthetic access$400(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;Lcom/google/firebase/FirebaseException;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->onVerificationFailed(Lcom/google/firebase/FirebaseException;)V

    return-void
.end method

.method static synthetic access$502(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mVerificationId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mForceResendingToken:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    return-object p1
.end method

.method static synthetic access$700(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->onCodeSent()V

    return-void
.end method

.method static synthetic access$800(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;)Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getSubmitConfirmationCodeFragment()Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->showAlertDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private completeLoadingDialog(Ljava/lang/String;)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mProgressDialog:Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mProgressDialog:Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;

    invoke-virtual {v0, p1}, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;->onComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    .line 78
    const-class v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    invoke-static {p0, v0, p1}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->createBaseIntent(Landroid/content/Context;Ljava/lang/Class;Lcom/firebase/ui/auth/data/model/FlowParameters;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "extra_params"

    .line 80
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private dismissLoadingDialog()V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mProgressDialog:Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mProgressDialog:Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;->dismissAllowingStateLoss()V

    const/4 v0, 0x0

    .line 399
    iput-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mProgressDialog:Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;

    :cond_0
    return-void
.end method

.method private finish(Lcom/google/firebase/auth/FirebaseUser;)V
    .locals 4

    .line 300
    new-instance v0, Lcom/firebase/ui/auth/IdpResponse$Builder;

    new-instance v1, Lcom/firebase/ui/auth/data/model/User$Builder;

    const-string v2, "phone"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/firebase/ui/auth/data/model/User$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getPhoneNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/firebase/ui/auth/data/model/User$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/firebase/ui/auth/data/model/User$Builder;

    move-result-object p1

    .line 303
    invoke-virtual {p1}, Lcom/firebase/ui/auth/data/model/User$Builder;->build()Lcom/firebase/ui/auth/data/model/User;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/firebase/ui/auth/IdpResponse$Builder;-><init>(Lcom/firebase/ui/auth/data/model/User;)V

    .line 304
    invoke-virtual {v0}, Lcom/firebase/ui/auth/IdpResponse$Builder;->build()Lcom/firebase/ui/auth/IdpResponse;

    move-result-object p1

    .line 305
    invoke-virtual {p1}, Lcom/firebase/ui/auth/IdpResponse;->toIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->finish(ILandroid/content/Intent;)V

    return-void
.end method

.method private getSubmitConfirmationCodeFragment()Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;
    .locals 2

    .line 404
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "SubmitConfirmationCodeFragment"

    .line 405
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    return-object v0
.end method

.method private onCodeSent()V
    .locals 4

    .line 197
    sget v0, Lcom/firebase/ui/auth/R$string;->fui_code_sent:I

    invoke-virtual {p0, v0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->completeLoadingDialog(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$1;

    invoke-direct {v1, p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$1;-><init>(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;)V

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private onVerificationFailed(Lcom/google/firebase/FirebaseException;)V
    .locals 4
    .param p1    # Lcom/google/firebase/FirebaseException;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 208
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->dismissLoadingDialog()V

    .line 210
    instance-of v0, p1, Lcom/google/firebase/auth/FirebaseAuthException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 211
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/auth/FirebaseAuthException;

    invoke-static {v0}, Lcom/firebase/ui/auth/util/FirebaseAuthError;->fromException(Lcom/google/firebase/auth/FirebaseAuthException;)Lcom/firebase/ui/auth/util/FirebaseAuthError;

    move-result-object v0

    .line 213
    sget-object v2, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$5;->$SwitchMap$com$firebase$ui$auth$util$FirebaseAuthError:[I

    invoke-virtual {v0}, Lcom/firebase/ui/auth/util/FirebaseAuthError;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const-string v2, "PhoneVerification"

    .line 230
    invoke-virtual {v0}, Lcom/firebase/ui/auth/util/FirebaseAuthError;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    invoke-virtual {v0}, Lcom/firebase/ui/auth/util/FirebaseAuthError;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->showAlertDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 227
    :pswitch_0
    sget p1, Lcom/firebase/ui/auth/R$string;->fui_error_quota_exceeded:I

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->showAlertDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 224
    :pswitch_1
    sget p1, Lcom/firebase/ui/auth/R$string;->fui_error_too_many_attempts:I

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->showAlertDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 216
    :pswitch_2
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "VerifyPhoneFragment"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;

    if-eqz p1, :cond_1

    .line 219
    sget v0, Lcom/firebase/ui/auth/R$string;->fui_invalid_phone_number:I

    .line 220
    invoke-virtual {p0, v0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {p1, v0}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->showError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "PhoneVerification"

    .line 234
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->showAlertDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onVerificationSuccess(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 2
    .param p1    # Lcom/google/firebase/auth/PhoneAuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 178
    invoke-virtual {p1}, Lcom/google/firebase/auth/PhoneAuthCredential;->getSmsCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->signIn(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    goto :goto_0

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->showSubmitCodeFragment()V

    .line 184
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getSubmitConfirmationCodeFragment()Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    move-result-object v0

    .line 187
    sget v1, Lcom/firebase/ui/auth/R$string;->fui_retrieving_sms:I

    invoke-virtual {p0, v1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->showLoadingDialog(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p1}, Lcom/google/firebase/auth/PhoneAuthCredential;->getSmsCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->setConfirmationCode(Ljava/lang/String;)V

    .line 192
    :cond_1
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->signIn(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    :goto_0
    return-void
.end method

.method private sendCode(Ljava/lang/String;Z)V
    .locals 9

    .line 240
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mPhoneNumber:Ljava/lang/String;

    .line 241
    sget-object v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;->VERIFICATION_STARTED:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    iput-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mVerificationState:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    .line 243
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getAuthHelper()Lcom/firebase/ui/auth/util/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/ui/auth/util/AuthHelper;->getPhoneAuthProvider()Lcom/google/firebase/auth/PhoneAuthProvider;

    move-result-object v1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$2;

    invoke-direct {v7, p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$2;-><init>(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mForceResendingToken:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    :goto_0
    move-object v8, p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    const-wide/32 v3, 0x1d4c0

    move-object v2, p1

    move-object v6, p0

    invoke-virtual/range {v1 .. v8}, Lcom/google/firebase/auth/PhoneAuthProvider;->verifyPhoneNumber(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V

    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 310
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 311
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/firebase/ui/auth/R$string;->fui_incorrect_code_dialog_positive_button_text:I

    .line 312
    invoke-virtual {p1, v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 313
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method private showLoadingDialog(Ljava/lang/String;)V
    .locals 1

    .line 387
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->dismissLoadingDialog()V

    .line 389
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mProgressDialog:Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;

    if-nez v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;->show(Landroid/support/v4/app/FragmentManager;)Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mProgressDialog:Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mProgressDialog:Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;

    invoke-virtual {v0, p1}, Lcom/firebase/ui/auth/ui/phone/CompletableProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showSubmitCodeFragment()V
    .locals 4

    .line 286
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getSubmitConfirmationCodeFragment()Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mPhoneNumber:Ljava/lang/String;

    .line 287
    invoke-static {v0, v1}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->newInstance(Lcom/firebase/ui/auth/data/model/FlowParameters;Ljava/lang/String;)Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    move-result-object v0

    .line 289
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/firebase/ui/auth/R$id;->fragment_verify_phone:I

    const-string v3, "SubmitConfirmationCodeFragment"

    .line 290
    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 291
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 293
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mIsDestroyed:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method private signIn(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 1
    .param p1    # Lcom/google/firebase/auth/PhoneAuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 317
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getAuthHelper()Lcom/firebase/ui/auth/util/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/ui/auth/util/AuthHelper;->getFirebaseAuth()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 318
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4;

    invoke-direct {v0, p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4;-><init>(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;)V

    .line 319
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3;

    invoke-direct {v0, p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3;-><init>(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;)V

    .line 337
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method protected getAlertDialog()Landroid/support/v7/app/AlertDialog;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 130
    sget-object v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;->VERIFICATION_NOT_STARTED:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    iput-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mVerificationState:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    .line 131
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 133
    :cond_0
    invoke-super {p0}, Lcom/firebase/ui/auth/ui/AppCompatBase;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 85
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/AppCompatBase;->onCreate(Landroid/os/Bundle;)V

    .line 86
    sget v0, Lcom/firebase/ui/auth/R$layout;->fui_activity_register_phone:I

    invoke-virtual {p0, v0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->setContentView(I)V

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mHandler:Landroid/os/Handler;

    .line 89
    sget-object v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;->VERIFICATION_NOT_STARTED:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    iput-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mVerificationState:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KEY_VERIFICATION_PHONE"

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mPhoneNumber:Ljava/lang/String;

    const-string v0, "KEY_STATE"

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "KEY_STATE"

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mVerificationState:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    :cond_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_params"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 101
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->newInstance(Lcom/firebase/ui/auth/data/model/FlowParameters;Landroid/os/Bundle;)Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;

    move-result-object p1

    .line 102
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/firebase/ui/auth/R$id;->fragment_verify_phone:I

    const-string v2, "VerifyPhoneFragment"

    .line 103
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v0, 0x1

    .line 146
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mIsDestroyed:Ljava/lang/Boolean;

    .line 147
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 148
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->dismissLoadingDialog()V

    .line 149
    invoke-super {p0}, Lcom/firebase/ui/auth/ui/AppCompatBase;->onDestroy()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "KEY_STATE"

    .line 139
    iget-object v1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mVerificationState:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "KEY_VERIFICATION_PHONE"

    .line 140
    iget-object v1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/AppCompatBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 110
    invoke-super {p0}, Lcom/firebase/ui/auth/ui/AppCompatBase;->onStart()V

    .line 119
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mVerificationState:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    sget-object v1, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;->VERIFICATION_STARTED:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mPhoneNumber:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->sendCode(Ljava/lang/String;Z)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mVerificationState:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    sget-object v1, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;->VERIFIED:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    if-ne v0, v1, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getAuthHelper()Lcom/firebase/ui/auth/util/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/ui/auth/util/AuthHelper;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->finish(Lcom/google/firebase/auth/FirebaseUser;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public submitConfirmationCode(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 162
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mVerificationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    sget v0, Lcom/firebase/ui/auth/R$string;->fui_verifying:I

    invoke-virtual {p0, v0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mVerificationId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/firebase/auth/PhoneAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->signIn(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "PhoneVerification"

    const-string v1, "submitConfirmationCode: mVerificationId is %s ; confirmationCode is %s"

    const/4 v2, 0x2

    .line 166
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->mVerificationId:Ljava/lang/String;

    .line 168
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "empty"

    goto :goto_1

    :cond_2
    const-string v4, "not empty"

    :goto_1
    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "empty"

    goto :goto_2

    :cond_3
    const-string p1, "not empty"

    :goto_2
    aput-object p1, v2, v3

    .line 167
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method verifyPhoneNumber(Ljava/lang/String;Z)V
    .locals 0

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->sendCode(Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    .line 155
    sget p1, Lcom/firebase/ui/auth/R$string;->fui_resending:I

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->showLoadingDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_0
    sget p1, Lcom/firebase/ui/auth/R$string;->fui_verifying:I

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->showLoadingDialog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
