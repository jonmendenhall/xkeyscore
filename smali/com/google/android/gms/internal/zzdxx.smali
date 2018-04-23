.class abstract Lcom/google/android/gms/internal/zzdxx;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdxx$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SuccessT:",
        "Ljava/lang/Object;",
        "CallbackT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private zzkuo:Z

.field protected zzmcx:Lcom/google/firebase/FirebaseApp;

.field protected zzmdq:Ljava/lang/String;

.field protected final zzmfd:I

.field protected final zzmfe:Lcom/google/android/gms/internal/zzdya;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzdya;"
        }
    .end annotation
.end field

.field protected zzmff:Lcom/google/firebase/auth/FirebaseUser;

.field protected zzmfg:Lcom/google/android/gms/internal/zzdxp;

.field protected zzmfh:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallbackT;"
        }
    .end annotation
.end field

.field protected zzmfi:Lcom/google/firebase/auth/internal/zzp;

.field protected zzmfj:Lcom/google/android/gms/internal/zzdxw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzdxw<",
            "TSuccessT;>;"
        }
    .end annotation
.end field

.field protected final zzmfk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private zzmfl:Landroid/app/Activity;

.field protected zzmfm:Ljava/util/concurrent/Executor;

.field protected zzmfn:Lcom/google/android/gms/internal/zzdxz;

.field protected zzmfo:Lcom/google/android/gms/internal/zzdym;

.field protected zzmfp:Lcom/google/android/gms/internal/zzdyk;

.field protected zzmfq:Lcom/google/android/gms/internal/zzdyi;

.field protected zzmfr:Lcom/google/android/gms/internal/zzdys;

.field protected zzmfs:Ljava/lang/String;

.field protected zzmft:Lcom/google/firebase/auth/PhoneAuthCredential;

.field zzmfu:Z

.field private zzmfv:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSuccessT;"
        }
    .end annotation
.end field

.field private zzmfw:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzdya;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzdya;-><init>(Lcom/google/android/gms/internal/zzdxx;Lcom/google/android/gms/internal/zzdxy;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdxx;->zzmfe:Lcom/google/android/gms/internal/zzdya;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdxx;->zzmfk:Ljava/util/List;

    iput p1, p0, Lcom/google/android/gms/internal/zzdxx;->zzmfd:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdxx;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdxx;->zzbrs()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdxx;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzaq(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdxx;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzdxx;->zzkuo:Z

    return p1
.end method

.method private final zzaq(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdxx;->zzmfi:Lcom/google/firebase/auth/internal/zzp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdxx;->zzmfi:Lcom/google/firebase/auth/internal/zzp;

    invoke-interface {v0, p1}, Lcom/google/firebase/auth/internal/zzp;->onError(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    return-void
.end method

.method private final zzbrs()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdxx;->zzbrl()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdxx;->zzkuo:Z

    const-string v1, "no success or failure set on method implementation"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->zza(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected abstract dispatch()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/zzdxx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/zzdxx<",
            "TSuccessT;TCallbackT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdxx;->zzmfk:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdxx;->zzmfk:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdxx;->zzmfl:Landroid/app/Activity;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdxx;->zzmfl:Landroid/app/Activity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdxx;->zzmfk:Ljava/util/List;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzdxx$zza;->zza(Landroid/app/Activity;Ljava/util/List;)V

    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdxx;->zzmfm:Ljava/util/concurrent/Executor;

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zza(Lcom/google/firebase/auth/internal/zzp;)Lcom/google/android/gms/internal/zzdxx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/internal/zzp;",
            ")",
            "Lcom/google/android/gms/internal/zzdxx<",
            "TSuccessT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "external failure callback cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/internal/zzp;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdxx;->zzmfi:Lcom/google/firebase/auth/internal/zzp;

    return-object p0
.end method

.method public final zzap(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdxx;->zzkuo:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdxx;->zzmfu:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdxx;->zzmfw:Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdxx;->zzmfj:Lcom/google/android/gms/internal/zzdxw;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/zzdxw;->zza(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackT;)",
            "Lcom/google/android/gms/internal/zzdxx<",
            "TSuccessT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "external callback cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdxx;->zzmfh:Ljava/lang/Object;

    return-object p0
.end method

.method public final zzbd(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSuccessT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdxx;->zzkuo:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdxx;->zzmfu:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdxx;->zzmfv:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdxx;->zzmfj:Lcom/google/android/gms/internal/zzdxw;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzdxw;->zza(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public abstract zzbrl()V
.end method

.method public final zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            ")",
            "Lcom/google/android/gms/internal/zzdxx<",
            "TSuccessT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "firebaseApp cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/FirebaseApp;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdxx;->zzmcx:Lcom/google/firebase/FirebaseApp;

    return-object p0
.end method

.method public final zze(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzdxx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/internal/zzdxx<",
            "TSuccessT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "firebaseUser cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/FirebaseUser;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdxx;->zzmff:Lcom/google/firebase/auth/FirebaseUser;

    return-object p0
.end method
