.class final Lcom/google/android/gms/internal/zzdwn;
.super Lcom/google/android/gms/internal/zzdwa;

# interfaces
.implements Lcom/google/android/gms/internal/zzdxw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        "CallbackT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzdwa<",
        "Lcom/google/android/gms/internal/zzdxk;",
        "TResultT;>;",
        "Lcom/google/android/gms/internal/zzdxw<",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field private zzedx:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TResultT;>;"
        }
    .end annotation
.end field

.field private final zzmes:Ljava/lang/String;

.field private zzmet:Lcom/google/android/gms/internal/zzdxx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzdxx<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzdxx<",
            "TResultT;TCallbackT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdwa;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdwn;->zzmet:Lcom/google/android/gms/internal/zzdxx;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdwn;->zzmet:Lcom/google/android/gms/internal/zzdxx;

    iput-object p0, p1, Lcom/google/android/gms/internal/zzdxx;->zzmfj:Lcom/google/android/gms/internal/zzdxw;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdwn;->zzmes:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzdxk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdwn;->zzedx:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzdwn;->zzmet:Lcom/google/android/gms/internal/zzdxx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzdxk;->zzbrm()Lcom/google/android/gms/internal/zzdxp;

    move-result-object p1

    iput-object p1, p2, Lcom/google/android/gms/internal/zzdxx;->zzmfg:Lcom/google/android/gms/internal/zzdxp;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzdxx;->dispatch()V

    return-void
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;",
            "Lcom/google/android/gms/common/api/Status;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdwn;->zzedx:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const-string v1, "doExecute must be called before onComplete"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdwn;->zzmet:Lcom/google/android/gms/internal/zzdxx;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzdxx;->zzmft:Lcom/google/firebase/auth/PhoneAuthCredential;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdwn;->zzedx:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdwn;->zzmet:Lcom/google/android/gms/internal/zzdxx;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdxx;->zzmft:Lcom/google/firebase/auth/PhoneAuthCredential;

    invoke-virtual {v0}, Lcom/google/firebase/auth/PhoneAuthCredential;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/PhoneAuthCredential;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzdxm;->zzb(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/PhoneAuthCredential;)Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdwn;->zzmet:Lcom/google/android/gms/internal/zzdxx;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/google/android/gms/internal/zzdxx;->zzmft:Lcom/google/firebase/auth/PhoneAuthCredential;

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzdwn;->zzedx:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzdxm;->zzao(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/zzdwn;->zzedx:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method final zzbrk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdwn;->zzmes:Ljava/lang/String;

    return-object v0
.end method
