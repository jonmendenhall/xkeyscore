.class public Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;
.super Lcom/firebase/ui/auth/ui/FragmentBase;
.source "RegisterEmailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/firebase/ui/auth/util/ui/ImeHelper$DonePressedListener;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RegisterEmailFragment"


# instance fields
.field private mActivity:Lcom/firebase/ui/auth/ui/HelperActivityBase;

.field private mAgreementText:Landroid/widget/TextView;

.field private mEmailEditText:Landroid/widget/EditText;

.field private mEmailFieldValidator:Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;

.field private mEmailInput:Landroid/support/design/widget/TextInputLayout;

.field private mNameEditText:Landroid/widget/EditText;

.field private mNameValidator:Lcom/firebase/ui/auth/util/ui/fieldvalidators/RequiredFieldValidator;

.field private mPasswordEditText:Landroid/widget/EditText;

.field private mPasswordFieldValidator:Lcom/firebase/ui/auth/util/ui/fieldvalidators/PasswordFieldValidator;

.field private mPasswordInput:Landroid/support/design/widget/TextInputLayout;

.field private mSaveSmartLock:Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;

.field private mUser:Lcom/firebase/ui/auth/data/model/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/FragmentBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;)Landroid/support/design/widget/TextInputLayout;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mPasswordInput:Landroid/support/design/widget/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;)Landroid/support/design/widget/TextInputLayout;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mEmailInput:Landroid/support/design/widget/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;)Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mSaveSmartLock:Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;

    return-object p0
.end method

.method static synthetic access$300(Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;)Lcom/firebase/ui/auth/ui/HelperActivityBase;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mActivity:Lcom/firebase/ui/auth/ui/HelperActivityBase;

    return-object p0
.end method

.method public static newInstance(Lcom/firebase/ui/auth/data/model/FlowParameters;Lcom/firebase/ui/auth/data/model/User;)Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;
    .locals 3

    .line 71
    new-instance v0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    invoke-direct {v0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;-><init>()V

    .line 73
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_flow_params"

    .line 74
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "extra_user"

    .line 75
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private registerUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 230
    new-instance v0, Lcom/firebase/ui/auth/IdpResponse$Builder;

    new-instance v1, Lcom/firebase/ui/auth/data/model/User$Builder;

    const-string v2, "password"

    invoke-direct {v1, v2, p1}, Lcom/firebase/ui/auth/data/model/User$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1, p2}, Lcom/firebase/ui/auth/data/model/User$Builder;->setName(Ljava/lang/String;)Lcom/firebase/ui/auth/data/model/User$Builder;

    move-result-object p2

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mUser:Lcom/firebase/ui/auth/data/model/User;

    .line 233
    invoke-virtual {v1}, Lcom/firebase/ui/auth/data/model/User;->getPhotoUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/firebase/ui/auth/data/model/User$Builder;->setPhotoUri(Landroid/net/Uri;)Lcom/firebase/ui/auth/data/model/User$Builder;

    move-result-object p2

    .line 234
    invoke-virtual {p2}, Lcom/firebase/ui/auth/data/model/User$Builder;->build()Lcom/firebase/ui/auth/data/model/User;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/firebase/ui/auth/IdpResponse$Builder;-><init>(Lcom/firebase/ui/auth/data/model/User;)V

    .line 235
    invoke-virtual {v0}, Lcom/firebase/ui/auth/IdpResponse$Builder;->build()Lcom/firebase/ui/auth/IdpResponse;

    move-result-object p2

    .line 237
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getAuthHelper()Lcom/firebase/ui/auth/util/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/ui/auth/util/AuthHelper;->getFirebaseAuth()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 238
    invoke-virtual {v0, p1, p3}, Lcom/google/firebase/auth/FirebaseAuth;->createUserWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/firebase/ui/auth/data/remote/ProfileMerger;

    invoke-direct {v1, p2}, Lcom/firebase/ui/auth/data/remote/ProfileMerger;-><init>(Lcom/firebase/ui/auth/IdpResponse;)V

    .line 239
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/firebase/ui/auth/ui/TaskFailureLogger;

    const-string v2, "RegisterEmailFragment"

    const-string v3, "Error creating user"

    invoke-direct {v1, v2, v3}, Lcom/firebase/ui/auth/ui/TaskFailureLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 241
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$3;

    invoke-direct {v2, p0, p3, p2}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$3;-><init>(Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;Ljava/lang/String;Lcom/firebase/ui/auth/IdpResponse;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 251
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    new-instance v0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;-><init>(Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private safeRequestFocus(Landroid/view/View;)V
    .locals 1

    .line 154
    new-instance v0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$1;-><init>(Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private validateAndRegisterUser()V
    .locals 6

    .line 216
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    iget-object v2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    iget-object v3, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mEmailFieldValidator:Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;

    invoke-virtual {v3, v0}, Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;->validate(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 221
    iget-object v4, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mPasswordFieldValidator:Lcom/firebase/ui/auth/util/ui/fieldvalidators/PasswordFieldValidator;

    invoke-virtual {v4, v1}, Lcom/firebase/ui/auth/util/ui/fieldvalidators/PasswordFieldValidator;->validate(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 222
    iget-object v5, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mNameValidator:Lcom/firebase/ui/auth/util/ui/fieldvalidators/RequiredFieldValidator;

    invoke-virtual {v5, v2}, Lcom/firebase/ui/auth/util/ui/fieldvalidators/RequiredFieldValidator;->validate(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getDialogHolder()Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    move-result-object v3

    sget v4, Lcom/firebase/ui/auth/R$string;->fui_progress_dialog_signing_up:I

    invoke-virtual {v3, v4}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->showLoadingDialog(I)V

    .line 225
    invoke-direct {p0, v0, v2, v1}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->registerUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 164
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/FragmentBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 165
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/firebase/ui/auth/R$string;->fui_title_register_email:I

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    .line 167
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/firebase/ui/auth/ui/HelperActivityBase;

    if-nez p1, :cond_0

    .line 168
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Must be attached to a HelperActivityBase."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/firebase/ui/auth/ui/HelperActivityBase;

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mActivity:Lcom/firebase/ui/auth/ui/HelperActivityBase;

    .line 172
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getAuthHelper()Lcom/firebase/ui/auth/util/AuthHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mActivity:Lcom/firebase/ui/auth/ui/HelperActivityBase;

    invoke-virtual {p1, v0}, Lcom/firebase/ui/auth/util/AuthHelper;->getSaveSmartLockInstance(Lcom/firebase/ui/auth/ui/HelperActivityBase;)Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mSaveSmartLock:Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;

    .line 173
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 174
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v0

    sget v1, Lcom/firebase/ui/auth/R$string;->fui_button_text_save:I

    iget-object v2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mAgreementText:Landroid/widget/TextView;

    .line 173
    invoke-static {p1, v0, v1, v2}, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->setup(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;ILandroid/widget/TextView;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/firebase/ui/auth/R$id;->button_create:I

    if-ne p1, v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->validateAndRegisterUser()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 83
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/firebase/ui/auth/data/model/User;->getUser(Landroid/os/Bundle;)Lcom/firebase/ui/auth/data/model/User;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mUser:Lcom/firebase/ui/auth/data/model/User;

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {p1}, Lcom/firebase/ui/auth/data/model/User;->getUser(Landroid/os/Bundle;)Lcom/firebase/ui/auth/data/model/User;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mUser:Lcom/firebase/ui/auth/data/model/User;

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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

    .line 97
    sget v0, Lcom/firebase/ui/auth/R$layout;->fui_register_email_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 99
    sget p2, Lcom/firebase/ui/auth/R$id;->email:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mEmailEditText:Landroid/widget/EditText;

    .line 100
    sget p2, Lcom/firebase/ui/auth/R$id;->name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mNameEditText:Landroid/widget/EditText;

    .line 101
    sget p2, Lcom/firebase/ui/auth/R$id;->password:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mPasswordEditText:Landroid/widget/EditText;

    .line 102
    sget p2, Lcom/firebase/ui/auth/R$id;->create_account_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mAgreementText:Landroid/widget/TextView;

    .line 103
    sget p2, Lcom/firebase/ui/auth/R$id;->email_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/TextInputLayout;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mEmailInput:Landroid/support/design/widget/TextInputLayout;

    .line 104
    sget p2, Lcom/firebase/ui/auth/R$id;->password_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/TextInputLayout;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mPasswordInput:Landroid/support/design/widget/TextInputLayout;

    .line 106
    new-instance p2, Lcom/firebase/ui/auth/util/ui/fieldvalidators/PasswordFieldValidator;

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mPasswordInput:Landroid/support/design/widget/TextInputLayout;

    .line 108
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/firebase/ui/auth/R$integer;->fui_min_password_length:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-direct {p2, v0, v1}, Lcom/firebase/ui/auth/util/ui/fieldvalidators/PasswordFieldValidator;-><init>(Landroid/support/design/widget/TextInputLayout;I)V

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mPasswordFieldValidator:Lcom/firebase/ui/auth/util/ui/fieldvalidators/PasswordFieldValidator;

    .line 109
    new-instance p2, Lcom/firebase/ui/auth/util/ui/fieldvalidators/RequiredFieldValidator;

    sget v0, Lcom/firebase/ui/auth/R$id;->name_layout:I

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    invoke-direct {p2, v0}, Lcom/firebase/ui/auth/util/ui/fieldvalidators/RequiredFieldValidator;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mNameValidator:Lcom/firebase/ui/auth/util/ui/fieldvalidators/RequiredFieldValidator;

    .line 111
    new-instance p2, Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mEmailInput:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {p2, v0}, Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mEmailFieldValidator:Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;

    .line 113
    iget-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-static {p2, p0}, Lcom/firebase/ui/auth/util/ui/ImeHelper;->setImeOnDoneListener(Landroid/widget/EditText;Lcom/firebase/ui/auth/util/ui/ImeHelper$DonePressedListener;)V

    .line 115
    iget-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 116
    iget-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 117
    iget-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 118
    sget p2, Lcom/firebase/ui/auth/R$id;->button_create:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object p2

    iget-boolean p2, p2, Lcom/firebase/ui/auth/data/model/FlowParameters;->enableCredentials:Z

    if-eqz p2, :cond_0

    .line 121
    iget-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mEmailEditText:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setImportantForAutofill(I)V

    :cond_0
    if-eqz p3, :cond_1

    return-object p1

    .line 129
    :cond_1
    iget-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mUser:Lcom/firebase/ui/auth/data/model/User;

    invoke-virtual {p2}, Lcom/firebase/ui/auth/data/model/User;->getEmail()Ljava/lang/String;

    move-result-object p2

    .line 130
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 131
    iget-object p3, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_2
    iget-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mUser:Lcom/firebase/ui/auth/data/model/User;

    invoke-virtual {p2}, Lcom/firebase/ui/auth/data/model/User;->getName()Ljava/lang/String;

    move-result-object p2

    .line 136
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 137
    iget-object p3, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_3
    iget-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 142
    iget-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-direct {p0, p2}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->safeRequestFocus(Landroid/view/View;)V

    goto :goto_0

    .line 143
    :cond_4
    iget-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 144
    iget-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mNameEditText:Landroid/widget/EditText;

    invoke-direct {p0, p2}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->safeRequestFocus(Landroid/view/View;)V

    goto :goto_0

    .line 146
    :cond_5
    iget-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-direct {p0, p2}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->safeRequestFocus(Landroid/view/View;)V

    :goto_0
    return-object p1
.end method

.method public onDonePressed()V
    .locals 0

    .line 212
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->validateAndRegisterUser()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    .line 193
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 194
    sget p2, Lcom/firebase/ui/auth/R$id;->email:I

    if-ne p1, p2, :cond_1

    .line 195
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mEmailFieldValidator:Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;

    iget-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;->validate(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 196
    :cond_1
    sget p2, Lcom/firebase/ui/auth/R$id;->name:I

    if-ne p1, p2, :cond_2

    .line 197
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mNameValidator:Lcom/firebase/ui/auth/util/ui/fieldvalidators/RequiredFieldValidator;

    iget-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/firebase/ui/auth/util/ui/fieldvalidators/RequiredFieldValidator;->validate(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 198
    :cond_2
    sget p2, Lcom/firebase/ui/auth/R$id;->password:I

    if-ne p1, p2, :cond_3

    .line 199
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mPasswordFieldValidator:Lcom/firebase/ui/auth/util/ui/fieldvalidators/PasswordFieldValidator;

    iget-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/firebase/ui/auth/util/ui/fieldvalidators/PasswordFieldValidator;->validate(Ljava/lang/CharSequence;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "extra_user"

    .line 181
    new-instance v1, Lcom/firebase/ui/auth/data/model/User$Builder;

    const-string v2, "password"

    iget-object v3, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mEmailEditText:Landroid/widget/EditText;

    .line 182
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/firebase/ui/auth/data/model/User$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mNameEditText:Landroid/widget/EditText;

    .line 183
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/firebase/ui/auth/data/model/User$Builder;->setName(Ljava/lang/String;)Lcom/firebase/ui/auth/data/model/User$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->mUser:Lcom/firebase/ui/auth/data/model/User;

    .line 184
    invoke-virtual {v2}, Lcom/firebase/ui/auth/data/model/User;->getPhotoUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/firebase/ui/auth/data/model/User$Builder;->setPhotoUri(Landroid/net/Uri;)Lcom/firebase/ui/auth/data/model/User$Builder;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lcom/firebase/ui/auth/data/model/User$Builder;->build()Lcom/firebase/ui/auth/data/model/User;

    move-result-object v1

    .line 181
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 186
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/FragmentBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
