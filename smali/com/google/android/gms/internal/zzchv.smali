.class Lcom/google/android/gms/internal/zzchv;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static zzdyg:Ljava/lang/String; = "com.google.android.gms.internal.zzchv"


# instance fields
.field private mRegistered:Z

.field private zzdyh:Z

.field private final zziwf:Lcom/google/android/gms/internal/zzcim;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzcim;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzchv;->zziwf:Lcom/google/android/gms/internal/zzcim;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzchv;)Lcom/google/android/gms/internal/zzcim;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzchv;->zziwf:Lcom/google/android/gms/internal/zzcim;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/zzchv;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzchv;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object p2

    const-string v0, "NetworkBroadcastReceiver received action"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzchv;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcim;->zzbab()Lcom/google/android/gms/internal/zzchq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchq;->zzzs()Z

    move-result p1

    iget-boolean p2, p0, Lcom/google/android/gms/internal/zzchv;->zzdyh:Z

    if-eq p2, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzchv;->zzdyh:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/zzchv;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/zzchw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzchw;-><init>(Lcom/google/android/gms/internal/zzchv;Z)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/zzchv;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object p2

    const-string v0, "NetworkBroadcastReceiver received unknown action"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final unregister()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchv;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchv;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchv;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzchv;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzchv;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Unregistering connectivity change receiver"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzchv;->mRegistered:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzchv;->zzdyh:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchv;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchv;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Failed to unregister the network broadcast receiver"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzzp()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchv;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchv;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzchv;->mRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzchv;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchv;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzbab()Lcom/google/android/gms/internal/zzchq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchq;->zzzs()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzchv;->zzdyh:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchv;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Registering connectivity change receiver. Network connected"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzchv;->zzdyh:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzchv;->mRegistered:Z

    return-void
.end method
