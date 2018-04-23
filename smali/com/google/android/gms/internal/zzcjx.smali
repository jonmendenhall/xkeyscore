.class final Lcom/google/android/gms/internal/zzcjx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjhc:Lcom/google/android/gms/internal/zzcjn;

.field private synthetic zzjhe:Ljava/util/concurrent/atomic/AtomicReference;

.field private synthetic zzjhf:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcjn;Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjx;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcjx;->zzjhe:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzcjx;->zzjhf:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjx;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjx;->zzjhe:Ljava/util/concurrent/atomic/AtomicReference;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcjx;->zzjhf:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzckg;->zza(Ljava/util/concurrent/atomic/AtomicReference;Z)V

    return-void
.end method
