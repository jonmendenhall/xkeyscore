.class final synthetic Lcom/google/android/gms/internal/zzcuj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcuo;


# instance fields
.field private final zzjxf:Lcom/google/android/gms/internal/zzcui;

.field private final zzjxg:Lcom/google/android/gms/internal/zzctv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcui;Lcom/google/android/gms/internal/zzctv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcuj;->zzjxf:Lcom/google/android/gms/internal/zzcui;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcuj;->zzjxg:Lcom/google/android/gms/internal/zzctv;

    return-void
.end method


# virtual methods
.method public final zzbct()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuj;->zzjxf:Lcom/google/android/gms/internal/zzcui;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcuj;->zzjxg:Lcom/google/android/gms/internal/zzctv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzctv;->zzbcm()Ljava/util/Map;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcui;->zzjxb:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
