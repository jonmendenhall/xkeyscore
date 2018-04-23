.class final Lcom/google/android/gms/internal/zzdzx;
.super Lcom/google/android/gms/internal/zzelk;


# instance fields
.field private synthetic zzmlm:Lcom/google/android/gms/internal/zzejc;

.field private synthetic zzmln:Lcom/google/android/gms/internal/zzdzw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdzw;Lcom/google/android/gms/internal/zzejc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdzx;->zzmln:Lcom/google/android/gms/internal/zzdzw;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdzx;->zzmlm:Lcom/google/android/gms/internal/zzejc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzelk;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzi(Ljava/lang/Throwable;)V
    .locals 3

    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_0

    const-string v0, "Firebase Database encountered an OutOfMemoryError. You may need to reduce the amount of data you are syncing to the client (e.g. by using queries or syncing a deeper path). See https://firebase.google.com/docs/database/ios/structure-data#best_practices_for_data_structure and https://firebase.google.com/docs/database/android/retrieve-data#filtering_data"

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/google/firebase/database/DatabaseException;

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x68

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Uncaught exception in Firebase Database runloop ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "). Please report to firebase-database-client@google.com"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzx;->zzmlm:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/zzejc;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdzx;->zzmln:Lcom/google/android/gms/internal/zzdzw;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdzw;->zza(Lcom/google/android/gms/internal/zzdzw;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/gms/internal/zzdzy;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/internal/zzdzy;-><init>(Lcom/google/android/gms/internal/zzdzx;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelk;->zzbud()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method
