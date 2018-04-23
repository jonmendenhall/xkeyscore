.class final Lcom/google/android/gms/internal/zzcjr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzimf:Ljava/lang/String;

.field private synthetic zzjgq:Ljava/lang/String;

.field private synthetic zzjgr:Ljava/lang/String;

.field private synthetic zzjhc:Lcom/google/android/gms/internal/zzcjn;

.field private synthetic zzjhe:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcjn;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjr;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcjr;->zzjhe:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcjr;->zzimf:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcjr;->zzjgq:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcjr;->zzjgr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjr;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcjn;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjr;->zzjhe:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjr;->zzimf:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcjr;->zzjgq:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcjr;->zzjgr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzckg;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
