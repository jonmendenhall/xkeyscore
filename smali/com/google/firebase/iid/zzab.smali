.class final Lcom/google/firebase/iid/zzab;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private zznzy:Lcom/google/firebase/iid/zzaa;


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/zzaa;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzab;->zznzy:Lcom/google/firebase/iid/zzaa;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcom/google/firebase/iid/zzab;->zznzy:Lcom/google/firebase/iid/zzaa;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/firebase/iid/zzab;->zznzy:Lcom/google/firebase/iid/zzaa;

    invoke-virtual {p1}, Lcom/google/firebase/iid/zzaa;->zzcjp()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcix()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "FirebaseInstanceId"

    const-string p2, "Connectivity changed. Starting background sync."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/google/firebase/iid/zzab;->zznzy:Lcom/google/firebase/iid/zzaa;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/Runnable;J)V

    iget-object p1, p0, Lcom/google/firebase/iid/zzab;->zznzy:Lcom/google/firebase/iid/zzaa;

    invoke-virtual {p1}, Lcom/google/firebase/iid/zzaa;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/firebase/iid/zzab;->zznzy:Lcom/google/firebase/iid/zzaa;

    return-void
.end method

.method public final zzcjq()V
    .locals 2

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcix()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FirebaseInstanceId"

    const-string v1, "Connectivity change received registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/iid/zzab;->zznzy:Lcom/google/firebase/iid/zzaa;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzaa;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
