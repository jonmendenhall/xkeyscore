.class final Lcom/google/android/gms/internal/zzcjt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjhc:Lcom/google/android/gms/internal/zzcjn;

.field private synthetic zzjhg:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcjn;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjt;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzcjt;->zzjhg:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjt;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchx;->zzjde:Lcom/google/android/gms/internal/zzcia;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcjt;->zzjhg:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjt;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Minimum session duration set"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcjt;->zzjhg:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
