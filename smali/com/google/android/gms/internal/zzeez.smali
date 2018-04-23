.class final Lcom/google/android/gms/internal/zzeez;
.super Lcom/google/android/gms/internal/zzejl;


# instance fields
.field private synthetic zzmve:Ljava/util/Map;

.field private synthetic zzmvf:Lcom/google/android/gms/internal/zzefa;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/zzefa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeez;->zzmve:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeez;->zzmvf:Lcom/google/android/gms/internal/zzefa;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzejl;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeez;->zzmve:Ljava/util/Map;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzeex;->zza(Lcom/google/android/gms/internal/zzekd;Ljava/util/Map;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    if-eq v0, p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeez;->zzmvf:Lcom/google/android/gms/internal/zzefa;

    new-instance v1, Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejg;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzedk;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/zzefa;->zzg(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V

    :cond_0
    return-void
.end method
