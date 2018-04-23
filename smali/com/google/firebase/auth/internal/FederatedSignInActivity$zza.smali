.class final Lcom/google/firebase/auth/internal/FederatedSignInActivity$zza;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/auth/internal/FederatedSignInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/android/gms/tasks/Task<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzmcw:Lcom/google/android/gms/internal/zzdyy;

.field private final zzmhy:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/auth/internal/FederatedSignInActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdyy;Lcom/google/firebase/auth/internal/FederatedSignInActivity;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity$zza;->zzmcw:Lcom/google/android/gms/internal/zzdyy;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity$zza;->zzmhy:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final varargs zzc([Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity$zza;->zzmcw:Lcom/google/android/gms/internal/zzdyy;

    invoke-static {v0}, Lcom/google/firebase/auth/zzd;->zza(Lcom/google/android/gms/internal/zzdyy;)Lcom/google/firebase/auth/zzd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :catch_0
    return-object p1
.end method

.method private final zzgo(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity$zza;->zzmhy:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zza(Lcom/google/firebase/auth/internal/FederatedSignInActivity;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/google/firebase/auth/internal/FederatedSignInActivity$zza;->zzc([Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/firebase/auth/internal/FederatedSignInActivity$zza;->zzgo(I)V

    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/google/firebase/auth/internal/FederatedSignInActivity$zza;->zzgo(I)V

    return-void
.end method
