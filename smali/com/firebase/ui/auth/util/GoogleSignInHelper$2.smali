.class Lcom/firebase/ui/auth/util/GoogleSignInHelper$2;
.super Ljava/lang/Object;
.source "GoogleSignInHelper.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/util/GoogleSignInHelper;->disableAutoSignIn()Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/util/GoogleSignInHelper;

.field final synthetic val$statusTask:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/util/GoogleSignInHelper;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/firebase/ui/auth/util/GoogleSignInHelper$2;->this$0:Lcom/firebase/ui/auth/util/GoogleSignInHelper;

    iput-object p2, p0, Lcom/firebase/ui/auth/util/GoogleSignInHelper$2;->val$statusTask:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    sget-object p1, Lcom/google/android/gms/auth/api/Auth;->CredentialsApi:Lcom/google/android/gms/auth/api/credentials/CredentialsApi;

    iget-object v0, p0, Lcom/firebase/ui/auth/util/GoogleSignInHelper$2;->this$0:Lcom/firebase/ui/auth/util/GoogleSignInHelper;

    iget-object v0, v0, Lcom/firebase/ui/auth/util/GoogleSignInHelper;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/api/credentials/CredentialsApi;->disableAutoSignIn(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v0, Lcom/firebase/ui/auth/util/GoogleApiHelper$TaskResultCaptor;

    iget-object v1, p0, Lcom/firebase/ui/auth/util/GoogleSignInHelper$2;->val$statusTask:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0, v1}, Lcom/firebase/ui/auth/util/GoogleApiHelper$TaskResultCaptor;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 49
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/util/GoogleSignInHelper$2;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
