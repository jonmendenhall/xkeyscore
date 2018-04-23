.class public Lcom/firebase/ui/auth/util/GoogleSignInHelper;
.super Lcom/firebase/ui/auth/util/GoogleApiHelper;
.source "GoogleSignInHelper.java"


# direct methods
.method private constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/gms/common/api/GoogleApiClient$Builder;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/firebase/ui/auth/util/GoogleApiHelper;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/gms/common/api/GoogleApiClient$Builder;)V

    return-void
.end method

.method public static getInstance(Landroid/support/v4/app/FragmentActivity;)Lcom/firebase/ui/auth/util/GoogleSignInHelper;
    .locals 3

    .line 21
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;

    .line 22
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->GOOGLE_SIGN_IN_API:Lcom/google/android/gms/common/api/Api;

    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/firebase/ui/auth/util/GoogleSignInHelper;

    invoke-direct {v1, p0, v0}, Lcom/firebase/ui/auth/util/GoogleSignInHelper;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/gms/common/api/GoogleApiClient$Builder;)V

    return-object v1
.end method


# virtual methods
.method public delete(Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/credentials/Credential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/GoogleSignInHelper;->getConnectedApiTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/firebase/ui/auth/util/GoogleApiHelper$ExceptionForwarder;

    new-instance v3, Lcom/firebase/ui/auth/util/GoogleSignInHelper$3;

    invoke-direct {v3, p0, p1, v0}, Lcom/firebase/ui/auth/util/GoogleSignInHelper$3;-><init>(Lcom/firebase/ui/auth/util/GoogleSignInHelper;Lcom/google/android/gms/auth/api/credentials/Credential;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-direct {v2, v0, v3}, Lcom/firebase/ui/auth/util/GoogleApiHelper$ExceptionForwarder;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public disableAutoSignIn()Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/GoogleSignInHelper;->getConnectedApiTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/firebase/ui/auth/util/GoogleApiHelper$ExceptionForwarder;

    new-instance v3, Lcom/firebase/ui/auth/util/GoogleSignInHelper$2;

    invoke-direct {v3, p0, v0}, Lcom/firebase/ui/auth/util/GoogleSignInHelper$2;-><init>(Lcom/firebase/ui/auth/util/GoogleSignInHelper;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-direct {v2, v0, v3}, Lcom/firebase/ui/auth/util/GoogleApiHelper$ExceptionForwarder;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public signOut()Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/GoogleSignInHelper;->getConnectedApiTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/firebase/ui/auth/util/GoogleApiHelper$ExceptionForwarder;

    new-instance v3, Lcom/firebase/ui/auth/util/GoogleSignInHelper$1;

    invoke-direct {v3, p0, v0}, Lcom/firebase/ui/auth/util/GoogleSignInHelper$1;-><init>(Lcom/firebase/ui/auth/util/GoogleSignInHelper;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-direct {v2, v0, v3}, Lcom/firebase/ui/auth/util/GoogleApiHelper$ExceptionForwarder;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
