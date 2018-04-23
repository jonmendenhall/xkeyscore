.class final Lcom/google/android/gms/internal/zzcjs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzimf:Ljava/lang/String;

.field private synthetic zzjgq:Ljava/lang/String;

.field private synthetic zzjgr:Ljava/lang/String;

.field private synthetic zzjhc:Lcom/google/android/gms/internal/zzcjn;

.field private synthetic zzjhe:Ljava/util/concurrent/atomic/AtomicReference;

.field private synthetic zzjhf:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcjn;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjs;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcjs;->zzjhe:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcjs;->zzimf:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcjs;->zzjgq:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcjs;->zzjgr:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzcjs;->zzjhf:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjs;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcjn;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjs;->zzjhe:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcjs;->zzimf:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcjs;->zzjgq:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcjs;->zzjgr:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/zzcjs;->zzjhf:Z

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzckg;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
