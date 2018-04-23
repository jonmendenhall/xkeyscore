.class final Lcom/google/android/gms/internal/zzcka;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjhc:Lcom/google/android/gms/internal/zzcjn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcjn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcka;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcka;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Resetting analytics data (FE)"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckg;->resetAnalyticsData()V

    return-void
.end method
