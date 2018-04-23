.class final Lcom/google/android/gms/internal/zzclh;
.super Lcom/google/android/gms/internal/zzcgs;


# instance fields
.field private synthetic zzjjf:Lcom/google/android/gms/internal/zzclf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzclf;Lcom/google/android/gms/internal/zzcim;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzclh;->zzjjf:Lcom/google/android/gms/internal/zzclf;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcgs;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclh;->zzjjf:Lcom/google/android/gms/internal/zzclf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzclf;->zza(Lcom/google/android/gms/internal/zzclf;)V

    return-void
.end method
