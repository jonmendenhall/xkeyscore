.class final Lcom/google/android/gms/internal/zzcjz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjhc:Lcom/google/android/gms/internal/zzcjn;

.field private synthetic zzjhe:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcjn;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjz;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcjz;->zzjhe:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjz;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjz;->zzjhe:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzckg;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
