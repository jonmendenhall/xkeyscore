.class public final Lcom/google/android/gms/internal/zzegq;
.super Ljava/lang/Object;


# static fields
.field public static final zzmxs:Lcom/google/android/gms/internal/zzegq;

.field public static final zzmxt:Lcom/google/android/gms/internal/zzegq;


# instance fields
.field private final zzmxu:Lcom/google/android/gms/internal/zzegr;

.field private final zzmxv:Lcom/google/android/gms/internal/zzeih;

.field private final zzmxw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzegq;

    sget-object v1, Lcom/google/android/gms/internal/zzegr;->zzmxx:Lcom/google/android/gms/internal/zzegr;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzegq;-><init>(Lcom/google/android/gms/internal/zzegr;Lcom/google/android/gms/internal/zzeih;Z)V

    sput-object v0, Lcom/google/android/gms/internal/zzegq;->zzmxs:Lcom/google/android/gms/internal/zzegq;

    new-instance v0, Lcom/google/android/gms/internal/zzegq;

    sget-object v1, Lcom/google/android/gms/internal/zzegr;->zzmxy:Lcom/google/android/gms/internal/zzegr;

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzegq;-><init>(Lcom/google/android/gms/internal/zzegr;Lcom/google/android/gms/internal/zzeih;Z)V

    sput-object v0, Lcom/google/android/gms/internal/zzegq;->zzmxt:Lcom/google/android/gms/internal/zzegq;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzegr;Lcom/google/android/gms/internal/zzeih;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzegq;->zzmxu:Lcom/google/android/gms/internal/zzegr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzegq;->zzmxv:Lcom/google/android/gms/internal/zzeih;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzegq;->zzmxw:Z

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/zzeih;)Lcom/google/android/gms/internal/zzegq;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzegq;

    sget-object v1, Lcom/google/android/gms/internal/zzegr;->zzmxy:Lcom/google/android/gms/internal/zzegr;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/zzegq;-><init>(Lcom/google/android/gms/internal/zzegr;Lcom/google/android/gms/internal/zzeih;Z)V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegq;->zzmxu:Lcom/google/android/gms/internal/zzegr;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegq;->zzmxv:Lcom/google/android/gms/internal/zzeih;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzegq;->zzmxw:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x34

    add-int/2addr v4, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "OperationSource{source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", queryParams="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tagged="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbxl()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegq;->zzmxu:Lcom/google/android/gms/internal/zzegr;

    sget-object v1, Lcom/google/android/gms/internal/zzegr;->zzmxx:Lcom/google/android/gms/internal/zzegr;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzbxm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzegq;->zzmxw:Z

    return v0
.end method

.method public final zzbxn()Lcom/google/android/gms/internal/zzeih;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegq;->zzmxv:Lcom/google/android/gms/internal/zzeih;

    return-object v0
.end method
