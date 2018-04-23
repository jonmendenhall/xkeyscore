.class final Lcom/google/android/gms/internal/zzdzt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/FirebaseApp$IdTokenListener;


# instance fields
.field final synthetic zzmli:Lcom/google/android/gms/internal/zzecv;

.field private synthetic zzmlj:Lcom/google/android/gms/internal/zzdzq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdzq;Lcom/google/android/gms/internal/zzecv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdzt;->zzmlj:Lcom/google/android/gms/internal/zzdzq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdzt;->zzmli:Lcom/google/android/gms/internal/zzecv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/firebase/internal/zzc;)V
    .locals 2
    .param p1    # Lcom/google/firebase/internal/zzc;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzt;->zzmlj:Lcom/google/android/gms/internal/zzdzq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdzq;->zza(Lcom/google/android/gms/internal/zzdzq;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzdzu;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzdzu;-><init>(Lcom/google/android/gms/internal/zzdzt;Lcom/google/firebase/internal/zzc;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
