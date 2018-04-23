.class final Lcom/google/android/gms/internal/zzecb;
.super Ljava/lang/Object;


# instance fields
.field private final zzmpl:Lcom/google/android/gms/internal/zzece;

.field private final zzmpm:Lcom/google/android/gms/internal/zzebz;

.field private final zzmpn:Lcom/google/android/gms/internal/zzebl;

.field private final zzmpo:Ljava/lang/Long;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzece;Lcom/google/android/gms/internal/zzebz;Ljava/lang/Long;Lcom/google/android/gms/internal/zzebl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzecb;->zzmpl:Lcom/google/android/gms/internal/zzece;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzecb;->zzmpm:Lcom/google/android/gms/internal/zzebz;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzecb;->zzmpn:Lcom/google/android/gms/internal/zzebl;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzecb;->zzmpo:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzece;Lcom/google/android/gms/internal/zzebz;Ljava/lang/Long;Lcom/google/android/gms/internal/zzebl;Lcom/google/android/gms/internal/zzebp;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzecb;-><init>(Lcom/google/android/gms/internal/zzece;Lcom/google/android/gms/internal/zzebz;Ljava/lang/Long;Lcom/google/android/gms/internal/zzebl;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzecb;)Lcom/google/android/gms/internal/zzebz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzecb;->zzmpm:Lcom/google/android/gms/internal/zzebz;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzecb;)Lcom/google/android/gms/internal/zzece;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzecb;->zzmpl:Lcom/google/android/gms/internal/zzece;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecb;->zzmpm:Lcom/google/android/gms/internal/zzebz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzebz;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecb;->zzmpo:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    add-int/2addr v3, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (Tag: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbuu()Lcom/google/android/gms/internal/zzebz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecb;->zzmpm:Lcom/google/android/gms/internal/zzebz;

    return-object v0
.end method

.method public final zzbuv()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecb;->zzmpo:Ljava/lang/Long;

    return-object v0
.end method

.method public final zzbuw()Lcom/google/android/gms/internal/zzebl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecb;->zzmpn:Lcom/google/android/gms/internal/zzebl;

    return-object v0
.end method
