.class public Lcom/intermedia/adapters/HQAdapter$SectionRow;
.super Ljava/lang/Object;
.source "HQAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/adapters/HQAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SectionRow"
.end annotation


# instance fields
.field private row:I

.field private section:I

.field final synthetic this$0:Lcom/intermedia/adapters/HQAdapter;


# direct methods
.method constructor <init>(Lcom/intermedia/adapters/HQAdapter;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/intermedia/adapters/HQAdapter$SectionRow;->this$0:Lcom/intermedia/adapters/HQAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 159
    iput p1, p0, Lcom/intermedia/adapters/HQAdapter$SectionRow;->section:I

    .line 160
    iput p1, p0, Lcom/intermedia/adapters/HQAdapter$SectionRow;->row:I

    return-void
.end method

.method public constructor <init>(Lcom/intermedia/adapters/HQAdapter;II)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/intermedia/adapters/HQAdapter$SectionRow;->this$0:Lcom/intermedia/adapters/HQAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput p2, p0, Lcom/intermedia/adapters/HQAdapter$SectionRow;->section:I

    .line 165
    iput p3, p0, Lcom/intermedia/adapters/HQAdapter$SectionRow;->row:I

    return-void
.end method

.method static synthetic access$000(Lcom/intermedia/adapters/HQAdapter$SectionRow;)I
    .locals 0

    .line 154
    iget p0, p0, Lcom/intermedia/adapters/HQAdapter$SectionRow;->section:I

    return p0
.end method

.method static synthetic access$100(Lcom/intermedia/adapters/HQAdapter$SectionRow;)I
    .locals 0

    .line 154
    iget p0, p0, Lcom/intermedia/adapters/HQAdapter$SectionRow;->row:I

    return p0
.end method


# virtual methods
.method nextRow()V
    .locals 1

    .line 177
    iget v0, p0, Lcom/intermedia/adapters/HQAdapter$SectionRow;->row:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/intermedia/adapters/HQAdapter$SectionRow;->row:I

    return-void
.end method

.method nextSection()V
    .locals 1

    .line 181
    iget v0, p0, Lcom/intermedia/adapters/HQAdapter$SectionRow;->section:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/intermedia/adapters/HQAdapter$SectionRow;->section:I

    const/4 v0, 0x0

    .line 182
    iput v0, p0, Lcom/intermedia/adapters/HQAdapter$SectionRow;->row:I

    return-void
.end method

.method row()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/intermedia/adapters/HQAdapter$SectionRow;->row:I

    return v0
.end method

.method section()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/intermedia/adapters/HQAdapter$SectionRow;->section:I

    return v0
.end method
