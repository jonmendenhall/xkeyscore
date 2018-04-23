.class public Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;
.super Ljava/lang/Object;
.source "CredentialSignInHandler.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$StartWelcomeBackFlow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CredentialSignInHandler"


# instance fields
.field private mAccountLinkRequestCode:I

.field private mActivity:Lcom/firebase/ui/auth/ui/HelperActivityBase;

.field private mResponse:Lcom/firebase/ui/auth/IdpResponse;

.field private mSmartLock:Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/firebase/ui/auth/ui/HelperActivityBase;Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;ILcom/firebase/ui/auth/IdpResponse;)V
    .locals 0
    .param p2    # Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->mActivity:Lcom/firebase/ui/auth/ui/HelperActivityBase;

    .line 57
    iput-object p2, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->mSmartLock:Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;

    .line 58
    iput-object p4, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->mResponse:Lcom/firebase/ui/auth/IdpResponse;

    .line 59
    iput p3, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->mAccountLinkRequestCode:I

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;)Lcom/firebase/ui/auth/ui/HelperActivityBase;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->mActivity:Lcom/firebase/ui/auth/ui/HelperActivityBase;

    return-object p0
.end method

.method static synthetic access$200(Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;)Lcom/firebase/ui/auth/IdpResponse;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->mResponse:Lcom/firebase/ui/auth/IdpResponse;

    return-object p0
.end method

.method static synthetic access$300(Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->mAccountLinkRequestCode:I

    return p0
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/AuthResult;

    invoke-interface {p1}, Lcom/google/firebase/auth/AuthResult;->getUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->mActivity:Lcom/firebase/ui/auth/ui/HelperActivityBase;

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->mSmartLock:Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;

    iget-object v2, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->mResponse:Lcom/firebase/ui/auth/IdpResponse;

    invoke-virtual {v0, v1, p1, v2}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->saveCredentialsOrFinish(Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;Lcom/google/firebase/auth/FirebaseUser;Lcom/firebase/ui/auth/IdpResponse;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;

    if-eqz v0, :cond_1

    .line 69
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->mResponse:Lcom/firebase/ui/auth/IdpResponse;

    invoke-virtual {p1}, Lcom/firebase/ui/auth/IdpResponse;->getEmail()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 71
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->mActivity:Lcom/firebase/ui/auth/ui/HelperActivityBase;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->getAuthHelper()Lcom/firebase/ui/auth/util/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/ui/auth/util/AuthHelper;->getFirebaseAuth()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 72
    invoke-static {v0, p1}, Lcom/firebase/ui/auth/util/data/ProviderUtils;->fetchTopProvider(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$StartWelcomeBackFlow;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$StartWelcomeBackFlow;-><init>(Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$1;)V

    .line 73
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$1;

    invoke-direct {v0, p0}, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$1;-><init>(Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;)V

    .line 74
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :cond_1
    const-string v0, "CredentialSignInHandler"

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected exception when signing in with credential "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->mResponse:Lcom/firebase/ui/auth/IdpResponse;

    .line 86
    invoke-virtual {v2}, Lcom/firebase/ui/auth/IdpResponse;->getProviderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unsuccessful. Visit https://console.firebase.google.com to enable it."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    .line 84
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :cond_2
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->mActivity:Lcom/firebase/ui/auth/ui/HelperActivityBase;

    invoke-virtual {p1}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->getDialogHolder()Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->dismissDialog()V

    :goto_0
    return-void
.end method
