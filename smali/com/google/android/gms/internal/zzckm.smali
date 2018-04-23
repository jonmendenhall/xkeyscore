.class final Lcom/google/android/gms/internal/zzckm;
.super Lcom/google/android/gms/internal/zzcgs;


# instance fields
.field private synthetic zzjij:Lcom/google/android/gms/internal/zzckg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckg;Lcom/google/android/gms/internal/zzcim;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckm;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcgs;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckm;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Tasks have been queued for a long time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    return-void
.end method
