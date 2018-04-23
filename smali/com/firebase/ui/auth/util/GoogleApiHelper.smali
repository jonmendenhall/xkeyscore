.class public abstract Lcom/firebase/ui/auth/util/GoogleApiHelper;
.super Ljava/lang/Object;
.source "GoogleApiHelper.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/ui/auth/util/GoogleApiHelper$ExceptionForwarder;,
        Lcom/firebase/ui/auth/util/GoogleApiHelper$TaskResultCaptor;
    }
.end annotation


# static fields
.field private static final SAFE_ID:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mGoogleApiConnectionTask:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/firebase/ui/auth/util/GoogleApiHelper;->SAFE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/gms/common/api/GoogleApiClient$Builder;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/firebase/ui/auth/util/GoogleApiHelper;->mGoogleApiConnectionTask:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 33
    invoke-static {}, Lcom/firebase/ui/auth/util/GoogleApiHelper;->getSafeAutoManageId()I

    move-result v0

    invoke-virtual {p2, p1, v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->enableAutoManage(Landroid/support/v4/app/FragmentActivity;ILcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 34
    invoke-virtual {p2, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 35
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/util/GoogleApiHelper;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-void
.end method

.method public static getSafeAutoManageId()I
    .locals 1

    .line 43
    sget-object v0, Lcom/firebase/ui/auth/util/GoogleApiHelper;->SAFE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getConnectedApiTask()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/firebase/ui/auth/util/GoogleApiHelper;->mGoogleApiConnectionTask:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    iget-object v0, p0, Lcom/firebase/ui/auth/util/GoogleApiHelper;->mGoogleApiConnectionTask:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 65
    iget-object v0, p0, Lcom/firebase/ui/auth/util/GoogleApiHelper;->mGoogleApiConnectionTask:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Ljava/net/ConnectException;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
